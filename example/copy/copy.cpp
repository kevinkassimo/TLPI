//
// Created by kunqian on 6/22/17.
//

#include "copy.h"
#include "../myutils.h"

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <sys/stat.h>
#include <fcntl.h>

int main(int argc, char** argv) {
    int in_fd, out_fd, oflags;

    mode_t file_perms;
    ssize_t num_read;

    if (argc != 3 || strcmp(argv[1], "--help") == 0) {
        usage_exit("%s oldfile newfile\n", argv[0]);
    }

    if ((in_fd = open(argv[1], O_RDONLY)) == -1) {
        err_exit(EXIT_FAILURE ,"cannot open source file %s", argv[1]);
    }

    oflags = O_CREAT | O_WRONLY | O_TRUNC;
    file_perms = S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH;

    if ((out_fd = open(argv[2], oflags, file_perms)) == -1) {
        err_exit(EXIT_FAILURE, "cannot create or open target file %s\n", argv[2]);
    }

#ifndef BUF_SIZE
#define BUF_SIZE 1024
    char buf[BUF_SIZE];
    memset(buf, 0, BUF_SIZE);

    while ((num_read = read(in_fd, buf, BUF_SIZE)) > 0) {
        if (write(out_fd, buf, num_read) != num_read) {
            err_exit(EXIT_FAILURE, "cannot write the whole buffer\n");
        }
    }

    if (num_read == -1) {
        perror("read");
        exit(EXIT_FAILURE);
    }

    if (close(in_fd) == -1) {
        err_exit(EXIT_FAILURE, "cannot properly close file %s\n", argv[1]);
    }
    if (close(out_fd) == -1) {
        err_exit(EXIT_FAILURE, "cannot properly close file %s\n", argv[2]);
    }
#undef BUF_SIZE

    exit(EXIT_SUCCESS);
}
