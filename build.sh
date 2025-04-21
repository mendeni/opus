#!/bin/bash

set -x

make clean

# ./configure CC="gcc -arch x86_64 -arch arm64" --enable-dred --enable-deep-plc
./configure CC="gcc -arch x86_64 -arch arm64" --enable-deep-plc
# ./configure CC="gcc -arch x86_64 -arch arm64"

make

make check
