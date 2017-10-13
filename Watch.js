
const fs = require('fs');


/* fs.watchFile('Test.md', (cur, pre) => {
    console.log( cur.size, cur.atime );
}) */

fs.watch ( './', (chan, file) => {
    console.log('\n'+file);
})