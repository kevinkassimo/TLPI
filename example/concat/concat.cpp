//
// Created by kunqian on 6/22/17.
//

#include "../myutils.h"
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <error.h>
#include <errno.h>


int main(int argc, char** argv) {
    if (argc != 2 || strcmp(argv[1], "--help") == 0) {
        usage_exit("%s targetfile\n", argv[0]);
    }

    int fd = open(argv[1], O_CREAT | O_RDWR, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IROTH);

    if (fd == -1) {
        perror("open");
        err_exit(EXIT_FAILURE, "cannot open or create target file\n");
    }

    if (lseek(fd, 0, SEEK_END) == -1) {
        perror("lseek");
        err_exit(EXIT_FAILURE, "cannot move file descriptor to the end of file\n");
    }

    int num_read;
#ifndef BUF_SIZE
#define BUF_SIZE 1024
    char buf[BUF_SIZE];
    memset(buf, 0, BUF_SIZE);
    while ((num_read = read(STDIN_FILENO, buf, BUF_SIZE)) > 0) {
        if (write(fd, buf, num_read) != num_read) {
            err_exit(EXIT_FAILURE, "cannot write all buffer input to file\n");
        }
    }

    if (close(fd) == -1) {
        err_exit(EXIT_FAILURE, "cannot properly close file '%s'\n", argv[1]);
    }
    exit(EXIT_SUCCESS);
#undef BUF_SIZE
#endif
}