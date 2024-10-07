#!/bin/bash

set -e -o pipefail

echo "-- build kernel"
cd linux-6.8
make defconfig

time ( make -j"$(nproc)" 2>&3 ) 3>&2 2>compile_time_output.txt

echo "-- clean up"
make clean