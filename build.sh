#!/bin/bash

set -x

# Works on MacOS arm64 (M1 chip)
# ./configure CC="gcc -arch x86_64 -arch arm64" --enable-dred --enable-deep-plc
./configure CC="gcc -arch x86_64 -arch arm64" --enable-deep-plc
# ./configure CC="gcc -arch x86_64 -arch arm64"

# We need to --disable-rtcd on MacOS x86_84 due to this issue:
# https://gitlab.xiph.org/xiph/opus/-/issues/2361
# ./configure CC="gcc -arch x86_64 -arch arm64" --enable-deep-plc --disable-rtcd

make clean

make

make check
