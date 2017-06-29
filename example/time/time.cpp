//
// Created by kunqian on 6/29/17.
//

#include "../myutils.h"

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <unistd.h>
#include <sys/time.h>
#include <sys/times.h>
#include <sys/wait.h>
#include <time.h>
#include <math.h>

static char* format_time(double sec) {
    static char buf[BUF_SIZE];

    int min = (int) (sec / 60);
    double remsec = fmod(sec, 60.0);
    memset(buf, 0, BUF_SIZE);
    snprintf(buf, BUF_SIZE-1, "%ldm%.3fs", (long) min, remsec);

    return buf;
}

static void report_time(struct tms* recorded_time) {
    static timeval tv;
    static long clock_ticks;
    if (clock_ticks <= 0) {
        clock_ticks = sysconf(_SC_CLK_TCK);
        if (clock_ticks <= 0) {
            fail_exit("clock ticks fetch failure\n");
        }
    }

    if (recorded_time == NULL) {
        if (gettimeofday(&tv, NULL) == 1) {
            fail_exit("gettimeofday() error\n");
        }
        return;
    }

    if (times(recorded_time) == -1) {
        fail_exit("times() error\n");
    }

    static timeval new_tv;
    if (gettimeofday(&new_tv, NULL) == -1) {
        fail_exit("gettimeofday() error\n");
    }

    printf("real:\t%s\n", format_time((double) (new_tv.tv_sec + new_tv.tv_usec / 1000000.0) - (tv.tv_sec + tv.tv_usec / 1000000.0)));
    printf("user:\t%s\n", format_time((double) recorded_time->tms_cutime / clock_ticks));
    printf("sys:\t%s\n", format_time((double) recorded_time->tms_cstime / clock_ticks));
}


int main(int argc, char *argv[]) {

    struct tms rt;

#ifndef _SC_CLK_TCK
    fail_exit("_SC_CLK_TCK not defined\n");
#endif

    long clock_ticks = sysconf(_SC_CLK_TCK);
    if (clock_ticks <= 0) {
        fail_exit("clock ticks fetch failure\n");
    }

    if (argc <= 1) {
        times(&rt);
        report_time(&rt);
        exit(EXIT_SUCCESS);
    }

    int rc = fork();
    if (rc == 0) {
        char* new_argv[4];

        memset(new_argv, 0, 4);

        char arg_sh[] = "sh";
        char arg_c[] = "-c";
        new_argv[0] = arg_sh;
        new_argv[1] = arg_c;

        char cmd[BUF_SIZE];
        memset(cmd, 0, BUF_SIZE);

        for (int i = 1; i < argc; i++) {
            if (strlen(cmd) + strlen(argv[i]) >= BUF_SIZE - 1) {
                fail_exit("buf size reached\n");
            }
            strcat(cmd, argv[i]);
            strcat(cmd, " ");
        }

        new_argv[2] = cmd;

        //execv("/bin/sh", new_argv);
        execl("/bin/sh", "sh", "-c", cmd, (char*) 0);

        printf("failed to exec\n");
        printf("exec source: %s %s %s\n", new_argv[0], new_argv[1], new_argv[2]);
        exit(EXIT_FAILURE);
    } else {
        report_time(NULL);

        wait(NULL);

        report_time(&rt);

        exit(EXIT_SUCCESS);
    }
}