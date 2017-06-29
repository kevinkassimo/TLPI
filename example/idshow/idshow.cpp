//
// Created by kunqian on 6/28/17.
//
#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

#include "../myutils.h"
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
#include <grp.h>
#include <limits.h>
#include <sys/fsuid.h>
#include <pwd.h>
#include <shadow.h>
#include <error.h>

bool get_username_from_id(int id, char *name) {
    struct passwd *pwd;

    if ((pwd = getpwuid(id)) == NULL) {
        return false;
    }
    strcpy(name, pwd->pw_name);
    return true;
}

bool get_groupname_from_id(int id, char *name) {
    struct group* grp;

    if ((grp = getgrgid(id)) == NULL) {
        return false;
    }
    strcpy(name, grp->gr_name);
    return true;
}


#define SG_SIZE (_SC_NGROUPS_MAX + 1)
#define LOGIN_NAME_MAX (_SC_LOGIN_NAME_MAX + 1)

int main(int argc, char **argv) {

    uid_t ruid, euid, suid, fsuid;
    gid_t rgid, egid, sgid, fsgid;
    gid_t supp_groups[SG_SIZE > 0 ? SG_SIZE : 256];

    int num_groups;
    char username[LOGIN_NAME_MAX];

    if (getresuid(&ruid, &euid, &suid) == -1) {
        err_exit(EXIT_FAILURE, "getresuid() operation not permitted\n");
    }
    if (getresgid(&rgid, &egid, &sgid) == -1) {
        err_exit(EXIT_FAILURE, "getresgid() operation not permitted\n");
    }

    fsuid = setfsuid(0); // would indirectly get the fsuid if the process is not root
    fsgid = setfsgid(0);

    printf("UID: ");
    memset(username, 0, LOGIN_NAME_MAX);
    printf("real=%s (%ld); ", get_username_from_id(ruid, username) ? username : "???", (long) ruid);
    memset(username, 0, LOGIN_NAME_MAX);
    printf("eff=%s (%ld); ", get_username_from_id(euid, username) ? username : "???", (long) euid);
    memset(username, 0, LOGIN_NAME_MAX);
    printf("saved=%s (%ld); ", get_username_from_id(suid, username) ? username : "???", (long) suid);
    memset(username, 0, LOGIN_NAME_MAX);
    printf("fs=%s (%ld); ", get_username_from_id(fsuid, username) ? username : "???", (long) fsuid);

    printf("\n");

    char groupname[LOGIN_NAME_MAX];
    printf("GID: ");
    memset(groupname, 0, LOGIN_NAME_MAX);
    printf("real=%s (%ld); ", get_groupname_from_id(rgid, groupname) ? groupname : "???", (long) rgid);
    memset(groupname, 0, LOGIN_NAME_MAX);
    printf("eff=%s (%ld); ", get_groupname_from_id(egid, groupname) ? groupname : "???", (long) egid);
    memset(groupname, 0, LOGIN_NAME_MAX);
    printf("saved=%s (%ld); ", get_groupname_from_id(sgid, groupname) ? groupname : "???", (long) sgid);
    memset(groupname, 0, LOGIN_NAME_MAX);
    printf("fs=%s (%ld); ", get_groupname_from_id(fsgid, groupname) ? groupname : "???", (long) fsgid);

    printf("\n");


    num_groups = getgroups(256, supp_groups);
    if (num_groups == -1) {
        perror("getgroups");
        printf("errno: %d\n", errno);
        err_exit(EXIT_FAILURE, "cannot get groups\n");
    }
    printf("Supplementary groups (%d): ", num_groups);
    for (int i = 0; i < num_groups; i++) {
        memset(groupname, 0, LOGIN_NAME_MAX);
        printf("%s (%ld) ", get_groupname_from_id(supp_groups[i], groupname) ? groupname : "???", (long) supp_groups[i]);
    }

    printf("\n");

    exit(EXIT_SUCCESS);
}
