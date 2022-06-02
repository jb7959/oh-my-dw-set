const presto = require('presto-client');
const client = new presto.Client({port: 9900, basic_auth: {user: 'trino', password: ''}});

const print = (s) => console.log(s);

const find = (query) => new Promise((resolve, reject) => {
    client.execute({
        //query:   'SELECT * FROM mongodb.ohmydw.events',
        query: query,
        //catalog: 'mongodb',
        catalog: '',
        schema: '',
        source: 'nodejs-client',
        state: (error, query_id, stats) => {
            //console.log({message: "status changed", id: query_id, stats: stats});
        },
        columns: (error, data) => {
        },
        data: (error, data, columns, stats) => {
            resolve({columns, data});
        },
        success: (error, stats) => {
            //console.log(stats);
        },
        error: (error) => {
            console.log(error);
            reject(false);
        }
    });
})


module.exports = {
    print,
    find
}