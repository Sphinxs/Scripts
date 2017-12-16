
const crypto = require('crypto')


if (process.argv.length == 2) {

    console.log('\nInforme dois argumentos, utilize o argumento \033[1;32mh\033[0;37m para obter mais informações\n')

} else if (process.argv[2].toLowerCase() == 'h') {

    console.log('\n\033[36mOpções\033[37m :\n\n\tO algoritmo de criptografia utilizado é o Aes - 256\n\n\t\tC \033[31m-\033[37m Encriptar \n\n\t\tD \033[31m-\033[37m Decriptar\n')

} else if (process.argv[2].toLowerCase() == 'c' || process.argv[2].toLowerCase() == 'd') {

    const alg = 'aes-256-ctr'

    const pwd = 'senha'

    if (process.argv[2].toLowerCase() == 'c') {

        const cip = crypto.createCipher(alg, pwd)

        const ptd = cip.update(process.argv[3], 'utf8', 'hex')

        console.log('\n' + ptd + '\n')

    } else {

        const dec = crypto.createDecipher(alg, pwd)

        const raw = dec.update(process.argv[3], 'hex', 'utf8')

        console.log('\n' + raw + '\n')

    }

} else {

    console.log('\nArgumento \033[1;31minvalido\033[0;37m\n')

}
