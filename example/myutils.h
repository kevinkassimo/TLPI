//
// Created by kunqian on 6/22/17.
//

#ifndef TLPI_MYUTILS_H
#define TLPI_MYUTILS_H

#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <error.h>
#include <stdarg.h>

inline void _err_exit(int errcode, char* format, ...) {
    va_list arg_list;

    fprintf(stderr, "Error: ");
    va_start(arg_list, format);
    vfprintf(stderr, format, arg_list);
    va_end(arg_list);

    _exit(errcode);
}

inline void err_exit(int errcode, char* format, ...) {
    va_list arg_list;

    fprintf(stderr, "Error: ");
    va_start(arg_list, format);
    vfprintf(stderr, format, arg_list);
    va_end(arg_list);

    exit(errcode);
}

inline void _usage_exit(char* format, ...) {
    va_list arg_list;

    fprintf(stderr, "Usage: ");
    va_start(arg_list, format);
    vfprintf(stderr, format, arg_list);
    va_end(arg_list);

    _exit(EXIT_FAILURE);
}

inline void usage_exit(char* format, ...) {
    va_list arg_list;

    fprintf(stderr, "Usage: ");
    va_start(arg_list, format);
    vfprintf(stderr, format, arg_list);
    va_end(arg_list);

    exit(EXIT_FAILURE);
}

#endif //TLPI_MYUTILS_H
