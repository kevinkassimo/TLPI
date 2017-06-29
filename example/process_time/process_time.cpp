//
// Created by kunqian on 6/29/17.
//

#include "../myutils.h"
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <unistd.h>
#include <sys/times.h>
#include <time.h>

static void display_proc_times(const char* msg) {
    struct tms t;
    clock_t clock_time;
    static long clock_ticks = 0;

    if (msg != NULL) {
        printf("%s", msg);
    }

    if (clock_ticks == 0) {
        clock_ticks = sysconf(_SC_CLK_TCK);
        if (clock_ticks == -1) {
            fail_exit("_SC_CLK_TCK error\n");
        }
    }

    clock_time = clock();
    if (clock_time == -1) {
        fail_exit("clock() error\n");
    }

    printf("\tclock() returns: %ld clocks-per-sec (%.2f secs)\n", (long) clock_time, (double) clock_time / CLOCKS_PER_SEC);

    if (times(&t) == -1) {
        fail_exit("times() error\n");
    }

    printf("\ttimes() yields: user CPU=%.2f; system CPU: %.2f\n", (double) t.tms_utime / clock_ticks, (double) t.tms_stime / clock_ticks);
}

int main(int argc, char *argv[]) {
    int num_calls;

    printf("CLOCKS_PER_SEC=%ld sysconf(_SC_CLK_TCK)=%ld\n", (long) CLOCKS_PER_SEC, (long) sysconf(_SC_CLK_TCK));

    display_proc_times("At program start:\n");



    num_calls = (argc > 1) ? get_int(argv[1]) : 100000000;
    for (int i = 0; i < num_calls; i++) {
        (void) getppid();
    }

    display_proc_times("After getppid() loop:\n");

    exit(EXIT_SUCCESS);
}