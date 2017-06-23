cmake_minimum_required(VERSION 3.7)
project(TLPI)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        example/copy/copy.cpp
        example/copy/copy.h
        example/myutils.h
        main.cpp)

add_executable(TLPI ${SOURCE_FILES})