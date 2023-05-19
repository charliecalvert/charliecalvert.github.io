import { writeFileSync } from 'node:fs';
import { listDirs } from "walk-directories";
// import { areIdentical } from 'elven-code';
import createDebugMessages from 'debug';
const debug = createDebugMessages('lib:dir-explorer');
const debugLink = createDebugMessages('lib:dir-explorer:link');

debug('process.env.CHAIO', process.env.CHAIO);
const CHAIO = process.env.CHAIO;
debug('CHAIO', CHAIO);

/**
 * Craft and write to disk a bash script to copy files from
 * a source directory  to the destination directory
 * @param {string} directoryName The source directory name
 * @param {string} lastItem The last item in the path, a directory name
 */
function writeCopyScript(directoryName, lastItem) {
    const SOURCE_DIR = `$CLOUDNOTES/assignments/${directoryName}/`
    const DEST_DIR = `${directoryName}`;
    const file = `#!/bin/bash

# Copy files to css-guide directory
SOURCE_DIR="$CLOUDNOTES/assignments/${directoryName}/"
DEST_DIR=${directoryName};

rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
`;
    writeFileSync(`${lastItem}.sh`, file);
}

/**
 * Create a markdown link for a directory
 * @param {string} fileName The full path to the directory
 * @returns
 */
function getMarkdownForADirectoryLink(fileName) {
    debug('fileName:', fileName);
    // Break path into an array of strings
    const pathArray = fileName.split('/');
    // Get the last item in the array
    const workDirectory = pathArray[pathArray.length - 1];
    // Get the remainder of a string
    const len = fileName.length;
    const remainder = fileName.substring(CHAIO.length, len);
    // debug('remainder = ', remainder);
    const markdownLink = `[${workDirectory}](${remainder})`;
    debugLink('markdownLink -', markdownLink);
    // if (!areIdentical(process.env.CHAIO, undefined)) {
    directoryLinks.push(`- ${markdownLink}`);

    return workDirectory;
}

/**
 * List all the directories in the assignments directory
 * and create a markdown link for each directory
 * @returns
 * @see
 */
async function listFiles(createCopyScripts = false) {
    const directoryLinks = [];
    debug('listFiles called');
    const patheToExplore = `${process.env.CHAIO}/assignments/`;
    debug('patheToExplore', patheToExplore);
    const result = await listDirs(patheToExplore, 0).catch(console.error);
    debug('result', result);
    result.map((fileName, index) => {
        const workDirectory = getMarkdownForADirectoryLink(fileName, index);
        if (createCopyScripts) {
            writeCopyScript(fileName, workDirectory);
        }
    });

    writeFileSync(`${process.env.CHAIO}/assignments/all-links.markdown`, directoryLinks.join('\n'));
}

debug('meta:dir-explorer.js', new URL(import.meta.url));
debug('meta:dir-explorer.js', new URL(import.meta.url).searchParams.get('file'));
await listFiles();