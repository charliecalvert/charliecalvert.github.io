import { writeFileSync } from 'node:fs';
import { listDirs } from "walk-directories";
import createDebugMessages from 'debug';
const debug = createDebugMessages('lib:dir-explorer');
const debugLink = createDebugMessages('lib:dir-explorer:link');

debug('process.env.CHAIO', process.env.CHAIO);
const CHAIO = process.env.CHAIO;
debug('CHAIO', CHAIO);

function writeCopyScript(directoryName, lastItem, index) {
    const SOURCE_DIR=`$CLOUDNOTES/assignments/${directoryName}/`
    const DEST_DIR=`${directoryName}`;
    const file = `#!/bin/bash

    # Copy files to css-guide directory
    SOURCE_DIR="$CLOUDNOTES/assignments/${directoryName}/"
    DEST_DIR=${directoryName};

    rsync -avru --delete --include="*/" --include="*.md" --exclude="*" ${SOURCE_DIR} ${DEST_DIR}
    `;
    writeFileSync(`${lastItem}.sh`, file);
}

async function listFiles() {
    const directoryLinks = [];
    debug('listFiles called');
    const patheToExplore = `${process.env.CHAIO}/assignments/`;
    debug('patheToExplore', patheToExplore);
    const result = await listDirs(patheToExplore, 0).catch(console.error);
    debug('result', result);
    result.map((fileName, index) => {
        debug('fileName:', fileName);
        // Break path into an array of strings
        const pathArray = fileName.split('/');
        // Get the last item in the array
        const lastItem = pathArray[pathArray.length - 1];
        // Get the remainder of a string
        const len = fileName.length;
        const remainder = fileName.substring(CHAIO.length, len);
        // debug('remainder = ', remainder);
        const markdownLink = `[${lastItem}](${remainder})`;
        debugLink('markdownLink -', markdownLink);
        directoryLinks.push(`- ${markdownLink}`);
        writeCopyScript(fileName, lastItem, index);
        return index;
    });
    writeFileSync(`${process.env.CHAIO}/assignments/all-links.markdown`, directoryLinks.join('\n'));
}

debug('meta:dir-explorer.js', new URL(import.meta.url) );
debug('meta:dir-explorer.js', new URL(import.meta.url).searchParams.get('file') );
await listFiles();