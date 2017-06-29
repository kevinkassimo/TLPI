//
// Created by kunqian on 6/29/17.
//
#include "../myutils.h"

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <unistd.h>
#include <error.h>
#include <locale.h>
#include <time.h>


int main(int argc, char **argv) {
    time_t t;
    struct tm* loc;

    char buf[BUF_SIZE];

    if (setlocale(LC_ALL, "") == NULL) {
        fail_exit("setlocale failed\n");
    }

    t = time(NULL);

    printf("ctime() of time() value is: %s\n", ctime(&t));

    loc = localtime(&t);
    if (loc == NULL) {
        fail_exit("localtime failed\n");
    }

    printf("asctime() of local time is: %s\n", asctime(loc));

    if (strftime(buf, BUF_SIZE, "%A, %d %B %Y, %H:%M:%S %Z", loc) == 0) {
        fail_exit("strftime returned 0\n");
    }
    printf("strftime() of local time is: %s\n", buf);

    exit(EXIT_SUCCESS);
}