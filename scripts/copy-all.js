import {
    getFrontMatterAndTocReport,
    hasFrontMatter,
    hasTocCode
} from 'elven-jekyll-post';
import { walkSimple } from 'walk-directories';
import { copyFileSync } from 'node:fs';
import { elfUtils, elfFiles } from 'elven-code';

import createDebugMessages from 'debug';
import { getWorkDirectories, directoryOptions } from './getWorkDirectories.js';
const debug = createDebugMessages('scripts:copy-all');

const ext = '.md';
const directory = directoryOptions().asign;
const fileInfos = await walkSimple(directory, ext)
    .catch((error) => {
        debug('ERROR', error);
        throw new elfUtils.UserException('no infos');
    });

if (fileInfos.length === 0) {
    throw new elfUtils.UserException('We received nothing');
}

// console.log('fileInfos', fileInfos);

/**
 *
 * Iterate through all the objects in fileInfos
 * if directory elves/_frontMatter.category does not exist
 * then create it.
 * Copy all files from frontMatter.fullPath to elves/_frontMattercategory.
 * @param {object} fileInfo
 */
async function processFile(fileInfo) {
    const fmData = await getFrontMatterAndTocReport(fileInfo.fullPath);
    if (fmData.frontMatter) {
        const { CATEGORY_DIR, CGI } = getWorkDirectories(fmData, true);
        //if (!elfUtils.fileExiss(`${CATEGORY_DIR}`)) {
        debug('CATEGORY_DIR', CATEGORY_DIR);
        debug('CGI DIR', CGI);
        elfUtils.ensureDir(CGI);
        elfUtils.ensureDir(CATEGORY_DIR);
        //}
        const src = fmData.frontMatter.fullPath;
        const dest = `${CATEGORY_DIR}/${fmData.frontMatter.fileName}`;
        if (!elfFiles.areIdentical(src, dest)) {
            copyFileSync(src, dest);
        }
    }
}

for (const fileInfo of fileInfos) {
    console.log('fileInfo', fileInfo);
    processFile(fileInfo)
}


