#!/bin/bash

set -e
echo "[*] Building mkxp-z..."
cd "$NBHZ_BUILDSCRIPTS_DIR/../../"
source linux/vars.sh
meson setup build --bindir=. "--prefix=$NBHZ_BUILDSCRIPTS_DIR/build"
cd build
ninja
ninja install