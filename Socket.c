
/*
//
// Python3 Server.py
//
// Gcc Socket.c -o Socket && ./Socket
//
*/

# include <stdio.h>

#include <string.h>

# include <stdlib.h>

# include <arpa/inet.h>

# include <sys/socket.h>

// # include <netinet/tcp.h>


int error (const char * msg);


typedef struct  {
    unsigned long   sa_addr;
} inaddr;

typedef struct {
    short           sin_family;
    unsigned short  sin_port;
    inaddr          sin_addr;
    char            sin_zero[8];
} sockaddrin;

typedef struct {
    unsigned short  sa_family;
    char            sa_data[14];
} sockaddr;


int main (const int argc, const char * argv []) {


    int socket_i = socket (AF_INET, SOCK_STREAM, 0);

    char server_r[1024];

    if (!socket_i)
        error ("Scoket instance");


    sockaddrin server;

    server.sin_family = AF_INET;

    server.sin_port = htons (5000);

    server.sin_addr.sa_addr = inet_addr ("127.0.0.1");

    if (connect (socket_i, (struct sockaddr *) &server , sizeof (server)) < 0)
        error ("Connection");

    puts ("\nConected\n");


    /* if ( recv(socket_i, server_r, 3000, 0) )
        error("Recv Failed");

    printf("\n%s\n", server_r); */


    close (socket_i);

    return 0;

}


int error (const char * msg) {

    printf ("\nError - %s\n", msg);

    exit (1);

}
