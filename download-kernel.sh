#!/bin/bash

set -e -o pipefail

echo "--- download and extract kernel"

wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.8.tar.xz -O /tmp/linux-6.8.tar.xz
tar -xf /tmp/linux-6.8.tar.xz
