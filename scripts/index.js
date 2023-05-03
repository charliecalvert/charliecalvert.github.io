import run from "elven-jekyll-post";

async function main() {
    await run();
}

main();



/* import { createJekyllPost } from "elven-jekyll-post/utils";

import { input } from '@inquirer/prompts';


async function run() {
    const answer = await input({ message: 'Enter base post name:' });

    createJekyllPost(answer);
}

await run();

export default run; */