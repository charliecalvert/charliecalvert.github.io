import {
    getFrontMatterAndTocReport,
    hasFrontMatter,
    hasTocCode
} from 'elven-jekyll-post';
import { walkSimple } from 'walk-directories';
import { copyFileSync } from 'node:fs';
import { elfUtils } from 'elven-code';
// const directory = process.env.GIT_HOME + '/CloudNotes';
//const directory = `${process.env.GIT_HOME}/CloudNotes/elvenware/development`;
const directoryOptions = () => {
    const elvenware = `${process.env.CLOUDNOTES}/elvenware/development`;
    const assignments = `${process.env.CLOUDNOTES}/Assignments`;
    // CHAIO is defined in .my_bash_profile, it is
    // charliecalvert.github.io
    const CGI =`${process.env.CHAIO}/elves/`
    return { elf: elvenware, asign: assignments, cgiElves: CGI };
}
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
    const CGI = `${directoryOptions().cgiElves}/assignments`;
    const CATEGORY_DIR = `${CGI}/_${fmData.frontMatter.category}`;
    //if (!elfUtils.fileExists(`${CATEGORY_DIR}`)) {
    elfUtils.ensureDir(CATEGORY_DIR);
    //}
    copyFileSync(fmData.frontMatter.fullPath, `${CATEGORY_DIR}/${fmData.frontMatter.fileName}`);
}

for (const fileInfo of fileInfos) {
    console.log('fileInfo', fileInfo);
    processFile(fileInfo)
}

/* console.log('fileInfo', fileInfos[45]);
processFile(fileInfos[0]); */