//
// Created by kunqian on 6/24/17.
//

#include "../myutils.h"
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <unistd.h>
#include <setjmp.h>

static jmp_buf buf;

static void nth_jmp(int n) {
    longjmp(buf, n);
}

void report_ints(int u, int r) {
    std::cout << "unreliable_int = " << u << ", reliable_int = " << r << "\n==================\n";
}

int main(int argc, char **argv) {
    std::cout << "setjmp/longjmp experiment:\n";

    int unreliable_int = 0;
    volatile int reliable_int = 0;

    switch (setjmp(buf)) {
        case 0:
            std::cout << "+ initial step\n" << "++ Adding 1 to both unreliable_int and reliable_int\n";
            unreliable_int++;
            reliable_int++;
            report_ints(unreliable_int, reliable_int);
            nth_jmp(1);
        case 1:
            std::cout << "+ after first jump\n" << "++ Adding 1 to both unreliable_int and reliable_int\n";
            unreliable_int++;
            reliable_int++;
            report_ints(unreliable_int, reliable_int);
            nth_jmp(2);
        case 10:
            std::cout << "+ last jump (10th jump)\n" << "++ Adding 1 to both unreliable_int and reliable_int\n";
            unreliable_int++;
            reliable_int++;
            std::cout << "Final results:\n";
            report_ints(unreliable_int, reliable_int);
            break;
        default:
            std::cout << "+ intermediate jump\n" << "++ Adding 1 to both unreliable_int and reliable_int\n";
            unreliable_int++;
            reliable_int++;
            report_ints(unreliable_int, reliable_int);
            nth_jmp(reliable_int);
    }
    exit(EXIT_SUCCESS);
}