import {
    getFrontMatterAndTocReport,
    hasFrontMatter,
    hasTocCode
} from 'elven-jekyll-post';
import { walkSimple } from 'walk-directories';
import { writeFileSync } from 'node:fs';

// const directory = process.env.GIT_HOME + '/CloudNotes';
const directory = `${process.env.CLOUDNOTES}/elvenware/development`;

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

async function processFile(fileInfo) {
    const fm = await getFrontMatterAndTocReport(fileInfo.fullPath);
    if (fm.frontMatter.category === 'css-guide' && !(fm.frontMatter.directoryName === 'CssGuide')) {
        console.log('frontMatter.category:', fm.frontMatter.category);
        console.log('fm.frontMatter', fm);
        fm.markdown =  fm.markdown.replace('category : css-guide', `category: ${fm.frontMatter.directoryName.toLowerCase()}-guide`);
        console.log('fm.markdown', fm.markdown);
        writeFileSync(fileInfo.fullPath, fm.markdown);
    }
}

for (const fileInfo of fileInfos) {
    console.log('fileInfo', fileInfo);
    processFile(fileInfo)
}

/* console.log('fileInfo', fileInfos[45]);
processFile(fileInfos[0]); */