import {
    getFrontMatterAndTocReport,
    hasFrontMatter,
    hasTocCode
} from 'elven-jekyll-post';
import { walkSimple } from 'walk-directories';
import { copyFileSync } from 'node:fs';
import { elfUtils } from 'elven-code';
// const directory = process.env.GIT_HOME + '/CloudNotes';
const directory = `${process.env.GIT_HOME}/CloudNotes/elvenware/development`;

const ext = '.md';

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
    const frontMatter = await getFrontMatterAndTocReport(fileInfo.fullPath);
    const CGI =`${process.env.GIT_HOME}/charliecalvert.github.io/elves/`
    const CATEGORY_DIR = `${CGI}/${frontMatter.category}`;
    if (!elfUtils.fileExists(${CATEGORY_DIR})) {
        elfUtils.ensureDir(`${CATEGORY_DIR}`);
    }
    copyFileSync(frontMatter.fullPath, `${CATEGORY_DIR}/${frontMatter.fileName}`, "utf8");
}

for (const fileInfo of fileInfos) {
    console.log('fileInfo', fileInfo);
    processFile(fileInfo)
}

/* console.log('fileInfo', fileInfos[45]);
processFile(fileInfos[0]); */