
import max from 'max-api-or-nah';
import fs from 'fs';
import { homedir } from 'os';
// import { resolve, posix, sep } from 'path';
import path from 'path';

// root
import config from '../config/evievedoc.config.json';

const devDataPath = config.referenceFiles.genExpr.copyto;
const userDataPath = resolveTilde('~/Documents/Max 9/Packages/evieve/docs/refpages/evieve-genexpr/genexpr-data');
const userPathRelative = path.resolve(`${__dirname}/../../docs/refpages/evieve-genexpr/genexpr-data`);

max.addHandler('test_paths', () => {
    testy();
});

function testy()
{
    void max.post(`${devDataPath}`);
    void max.post(`${userDataPath}`);
    void max.post(`${userPathRelative}`);
}

function resolveTilde(path: string) {
    if (!path || typeof(path) !== 'string') {
        return '';
    }

    if (path.startsWith('~/') || path === '~') {
        return path.replace('~', homedir());
    }

    return path;
}

// function posixPath(path: string) {
//     return path.split(sep).join(posix.sep);
// }
