#!/bin/bash

set -e -o pipefail

# TODO: record system information in a structured format

echo "--- record system information"
echo "system information" > system_info.txt
{ 
    echo "-------- UNAME --------";
    uname -a; 
    echo "-------- LSCPU --------";
    lscpu; 
    echo "-------- FREE --------";
    free -h; 
} >> system_info.txt