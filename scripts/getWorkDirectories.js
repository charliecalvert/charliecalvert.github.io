
/**
 * @typedef {object} DirectoryOptions
 * @property {string} elf The path to the elvenware directory
 * @property {string} asign The path to the assignments directory
 * @property {string} cgiElves The path to the CGI elves directory
 * @property {string} cgiAssignments The path to the CGI assignments directory
 * @see directoryOptions
 */

/**
 * @typedef {object} WorkDirectories
 * @property {string} CATEGORY_DIR The path to the category directory
 * @property {string} CGI The path to the CGI directory
 * @see getWorkDirectories
 * @see directoryOptions
 */

/**
 * Get the directory options
 * @returns {DirectoryOptions} The directory options
 * @see DirectoryOptions
 */
const directoryOptions = () => {
    const elvenware = `${process.env.CLOUDNOTES}/elvenware/development`;
    const assignments = `${process.env.CLOUDNOTES}/Assignments`;

    // CHAIO is defined in .my_bash_profile, it is
    // charliecalvert.github.io
    const CGI_ELVES = `${process.env.CHAIO}/elves`
    const CGI_ASSIGNMENTS = `${process.env.CHAIO}/assignments`;
    return {
        elf: elvenware,
        asign: assignments,
        cgiElves: CGI_ELVES,
        cgiAssignments: CGI_ASSIGNMENTS
    };
}


/**
 * Get the work directories
 * @param {object} fmData The front matter data
 * @param {boolean} useDefaults Use the default directories
 * @returns {WorkDirectories} The work directories
 * @see WorkDirectories
 * @see directoryOptions
 */
function getWorkDirectories(fmData, useDefaults = true) {
    let CGI = '';
    if (useDefaults) {
        CGI = `${directoryOptions().cgiElves}`;
    } else {
        CGI = `${directoryOptions().cgiAssignments}`;
    }
    const CATEGORY_DIR = `${CGI}/_${fmData.frontMatter.category}`;
    return { CATEGORY_DIR, CGI };
}

export { getWorkDirectories, directoryOptions };