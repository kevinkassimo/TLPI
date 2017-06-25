//
// Created by kunqian on 6/25/17.
//

#include "../myutils.h"
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <unistd.h>
#include <fcntl.h>
#include <error.h>

#define MAX_ALLOCS 1000000

bool isInt(char *s) {
    if (strlen(s) == 0 || ((!isdigit(s[0])) && (s[0] != '-') && (s[0] != '+'))) {
        return false;
    }

    char *p;
    strtol(s, &p, 10);

    return (*p == 0);
}

int getInt(char *s) {
    if (!isInt(s)) {
        err_exit(EXIT_FAILURE, "%s cannot be parsed as number\n", s);
        return -1;
    } else {
        return atoi(s);
    }
}

int main(int argc, char **argv) {
    char *ptr[MAX_ALLOCS];
    int freeStep, freeMin, freeMax, blockSize, numAllocs, j;

    printf("\n");

    if (argc < 3 || strcmp(argv[1], "--help") == 0) {
        usage_exit("%s num-allocs block-size [step [min [max]]]\n", argv[0]);
    }

    numAllocs = getInt(argv[1]);
    if (numAllocs > MAX_ALLOCS || numAllocs < 0) {
        err_exit(EXIT_FAILURE, "cannot allocate %d blocks\n", numAllocs);
    }

    blockSize = getInt(argv[2]);

    freeStep = (argc > 3) ? getInt(argv[3]) : 1;
    freeMin = (argc > 4) ? getInt(argv[4]) : 1;
    freeMax = (argc > 5) ? getInt(argv[5]) : numAllocs;

    if (freeMax > numAllocs) {
        err_exit(EXIT_FAILURE, "free-max > num-allocs\n");
    }

    printf("Initial program break:\t%10p\n", sbrk(0));

    printf("Allocating %d*%d bytes\n", numAllocs, blockSize);

    for (j = 0; j < numAllocs; j++) {
        ptr[j] = (char*) malloc(blockSize);
        if (ptr[j] == NULL) {
            err_exit(EXIT_FAILURE, "malloc failed\n");
        }
    }

    printf("Program break is now:\t%10p\n", sbrk(0));

    printf("Freeing blocks from %d to %d in steps of %d\n", freeMin, freeMax, freeStep);

    for (j = freeMin - 1; j < freeMax; j += freeStep) {
        free(ptr[j]);
    }

    printf("After free(), program break is:\t%10p\n", sbrk(0));

    exit(EXIT_SUCCESS);
}