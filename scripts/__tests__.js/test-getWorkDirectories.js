/**
 * Write test for the getWorkDirectories module.
 *
 * @jest-environment node
 *
 */

const getWorkDirectories = require('../getWorkDirectories');

describe('getWorkDirectories', () => {

    test('should return an array', () => {
        expect(Array.isArray(getWorkDirectories())).toBe(true);
    });

    test('should return an array with length 2', () => {
        expect(getWorkDirectories().length).toBe(2);
    });

});
