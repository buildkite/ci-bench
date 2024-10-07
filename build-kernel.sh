#!/bin/bash

set -e -o pipefail

echo "--- build kernel"

time ( { 
    cd linux-6.8;
    make defconfig;
    make -j"$(nproc)"; 
} 2>&3 ) 3>&2 2>compile_time_output.txt

echo "-- clean up"
make clean