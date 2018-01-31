
const mysql = require('mysql2/promise')

const init = async() => {

    const connection = await mysql.createConnection({
        host: '127.0.0.1',
        user: 'root',
        password: '',
        database: 'Blog'
    })

    const [rows, fiels] = await connection.execute('select * from users')

    rows.map(line => console.log(line.name))

}

init()
