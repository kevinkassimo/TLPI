//
// Created by kunqian on 6/23/17.
//

#include "../myutils.h"
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <sys/uio.h>
#include <unistd.h>
#include <fcntl.h>
#include <arpa/inet.h>
#include <netdb.h>

int main(int argc, char **argv) {
    int fd;
    struct addrinfo info;
    int i;
    struct in_addr addr;

    if ((fd = open(argv[1], O_RDONLY)) == -1) {
        err_exit(EXIT_FAILURE, "cannot open file");
    }

    int iovcnt = 3;
    int tot_req = 0;

    struct iovec iov[3];
    iov[0].iov_base = &info;
    iov[0].iov_len = sizeof(struct addrinfo);
    iov[1].iov_base = &i;
    iov[1].iov_len = sizeof(int);
    iov[2].iov_base = &addr;
    iov[2].iov_len = sizeof(struct in_addr);

    for (int index = 0; index < 3; index++) {
        tot_req += iov[index].iov_len;
    }

    int num_read;
    if ((num_read = readv(fd, iov, iovcnt)) == -1) {
        perror("readv");
        err_exit(EXIT_FAILURE, "failed to perform readv");
    }

    if (num_read < tot_req) {
        err_exit(EXIT_FAILURE, "failed to read all");
    }

    exit(EXIT_SUCCESS);
}