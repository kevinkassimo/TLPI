//
// Created by kunqian on 6/24/17.
//

#include "../myutils.h"
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>

extern char **environ;

int main(int argc, char **argv) {
    clearenv();

    if (argc < 2 || strcmp(argv[1], "--help") == 0) {
        usage_exit("setenv [name=value]*\n");
    }

    bool unset_flag = false;

    if (strcmp(argv[1], "-u") == 0) {
        unset_flag = true;
    }

    if (unset_flag) {
        for (int i = 2; i < argc; i++) {
            if (unsetenv(argv[i]) == -1) {
                perror("unsetenv");
                err_exit(EXIT_FAILURE, "cannot unset env %s\n", argv[i]);
            }
        }
    } else {
        for (int i = 1; i < argc; i++) {
            if (putenv(argv[i]) != 0) {
                perror("putenv");
                err_exit(EXIT_FAILURE, "cannot set env %s\n", argv[i]);
            }
        }
    }

    char **ep;
    for (ep = environ; *ep != NULL; ep++) {
        puts(*ep);
    }

    exit(EXIT_SUCCESS);
}