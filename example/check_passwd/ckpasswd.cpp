//
// Created by kunqian on 6/25/17.
//

#define _BSD_SOURCE // for getpass()
#define _XOPEN_SOURCE // for crypt()

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <unistd.h>
#include <error.h>
#include <errno.h>

#include <limits.h>
#include <pwd.h>
#include <shadow.h>

#include "../myutils.h"

int main(int argc, char** argv) {
    char *username, *password, *encrypted;
    struct passwd* pwd;
    struct spwd* shadow;
    size_t len;
    long namelen_max = sysconf(_SC_LOGIN_NAME_MAX);
    if (namelen_max < 0) {
        namelen_max = 256; // providing a default max is not given in conf
    }

    username = (char*) malloc(namelen_max);
    if (username == NULL) {
        err_exit(EXIT_FAILURE, "no allocable memory\n");
    }

    printf("Username: ");
    fflush(stdout);
    if (fgets(username, namelen_max, stdin) == NULL) {
        err_exit(EXIT_FAILURE, "EOF detected\n");
    }

    if (username[strlen(username) - 1] == '\n') {
        username[strlen(username) - 1] = '\0';
    }

    if ((pwd = getpwnam(username)) == NULL) {
        err_exit(EXIT_FAILURE, "cannot get/find username %s\n", username);
    }

    if ((shadow = getspnam(username)) == NULL && errno == EACCES) {
        err_exit(EXIT_FAILURE, "cannot access shadow file\n");
    }

    password = getpass("Password: ");
    if (password == NULL) {
        err_exit(EXIT_FAILURE, "cannot get password input\n");
    }

    encrypted = crypt(password, shadow->sp_pwdp);

    // To avoid keeping password available still in memory...
    memset(password, 0, strlen(password));

    if (encrypted == NULL) {
        err_exit(EXIT_FAILURE, "cannot get password hash\n");
    }

    if (strcmp(encrypted, shadow->sp_pwdp) != 0) {
        printf("Bad password for '%s'\n", username);
        exit(EXIT_FAILURE);
    }

    // Success operations
    printf("Password for user '%s' validated\n", username);
    printf("Free to perform private operations\n");

    exit(EXIT_SUCCESS);
}