import inquirer from 'inquirer';
import { exec } from 'child_process';

/**
 * excecute a bash command
 * @param {string} cmd - the command to execute
 * @returns {Promise<string>} - the output of the command
 * @see {@link https://stackoverflow.com/questions/20643470/execute-a-command-line-binary-with-node-js}
 */

function execShellCommand(cmd) {
    console.log('cmd', cmd);

    return new Promise((resolve, reject) => {
        exec(cmd, (error, stdout, stderr) => {
            if (error) {
                console.warn(error);
            }
            resolve(stdout ? stdout : stderr);
        });
    });
}

const options = {
    a: 'Copy Android Guide',
    b: 'walk-directories/scripts',
    c: 'CloudNotes/elvenware',
};
inquirer.prompt([
    {
        type: 'list',
        name: 'pathToExplore',
        message: 'Choose one of the follwing:',
        choices: [
            options.a,
            options.b,
            options.c,
        ],
    },
]).then((answers) => {
    let pathToExplore = '';
    let cmd = '';
    console.info('Answer:', answers);
    console.info('Answer:', answers.pathToExplore);
    console.info('Answer A:', options.a);

    if (answers.pathToExplore === options.a) {
        cmd = `./copy-android-guide.sh d`;
        console.log('cmd', cmd);
        execShellCommand(cmd).then((result) => {
            console.log('result', result);
        }).catch((error) => {
            console.log('error', error);
        });
    } else if (answers.pathToExplore === options.b) {
        pathToExplore = `${process.env.CLOUDNOTES}/elvenware/`;
        cmd = `options.b`;
        console.log('cmdb', cmd);
    } else if (answers.pathToExplore === options.c) {
        pathToExplore = `${process.env.CLOUDNOTES}/Assignments/`;
        cmd = `options.c`;
        console.log('cmdc', cmd);
        // execShellCommand(`./copy-android-guide.sh`);
    } else {
        console.log('No match');
    }

    // listFiles(pathToExplore, ext);
});
