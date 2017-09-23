#!/usr/bin/python

# -*- coding: utf-8 -*-


import threading

import socket


bind_i, bind_p = ( '0.0.0.0', 9999 )

server = socket.socket ( socket.AF_INET, socket.SOCK_STREAM )

server.bind ( ( bind_i, bind_p ) )

server.listen ( 5 )

print ( '\n[ * ] Listening : {0}:{1}\n'.format ( bind_i, bind_p ) )


def handle ( client ) :

    request = client.recv ( 1024 ).decode ()

    print ( '\n[ * ] Received : {0}\n'.format ( request ) )

    client.send ( 'Check - Package'.encode () )

    client.close ()


if __name__ == '__main__' :

    # Recebendo a conexão :

    while True :

        client, addr = server.accept ()

        print ( '\n[ * ] Accept From : {0} : {1}\n'.format ( addr [0], addr [1] ) )

        # Coloca a thread client para tratar os dados :

        client_h = threading.Thread (
            target = handle, args = ( client, )
        )

        client_h.start ()
