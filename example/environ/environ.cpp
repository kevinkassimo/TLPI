//
// Created by kunqian on 6/24/17.
//

#include "../myutils.h"
#include <iostream>

#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <unistd.h>
#include <error.h>
#include <fcntl.h>

// Serve as the same effect of the bash command "env"

extern char **environ;

int main(int argc, char **argv) {
    char **ep;
    for (ep = environ; *ep != NULL; ep++) {
        puts(*ep);
    }
    exit(EXIT_SUCCESS);
}