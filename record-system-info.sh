#!/bin/bash

set -e -o pipefail

# TODO: record system information in a structured format

echo "-- record system information"
echo "system information" > system_info.txt
{ 
    echo "\n-------- UNAME --------n";
    uname -a; 
    echo "\n-------- LSCPU --------\n";
    lscpu; 
    echo "\n-------- FREE --------\n";
    free -h; 
} >> system_info.txt