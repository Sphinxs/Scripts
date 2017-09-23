
import os

def all ():

    allfl = list ()

    for root, subfiles, files in os.walk ( os.getcwd () ):
        for names in files:
            allfl.append ( os.path.join(root, names) )

    return allfl


print ( '\n\n{0}\n\n'.format( all () ) )
