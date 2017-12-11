
from subprocess import check_output as check

from sys import argv

from os import system, path


if len(argv) == 2:

    home = '/home/' + argv[1]

    system('clear' or 'cls')

    for folder in check(['ls', home]).decode('utf8').split('\n'):

        if folder:

            print('\033[31m%s\033[37m' % (folder))

            for sub in check(['ls', home + '/' + folder]).decode('utf8').split('\n'):

                if path.isdir(home + '/' + folder + '/' + sub):

                    print('\n\t\033[34m%s\033[37m' % (sub))

                    continue

                print('\n\t\033[32m%s\033[37m' % (sub))


else:

    print('\nInform just \033[31mone\033[37m argument\n')
