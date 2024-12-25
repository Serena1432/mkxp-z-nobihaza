#!/bin/bash

set -e
echo "[*] Finalizing..."
cd "$NBHZ_BUILDSCRIPTS_DIR/build"
cp -r "$NBHZ_BUILDSCRIPTS_DIR/../../linux/build-x86_64/lib/ruby/1.9.1" .
mv ./1.9.1 ./stdlib
cp "$NBHZ_BUILDSCRIPTS_DIR/../../mkxp.json" .
cp -r "$NBHZ_BUILDSCRIPTS_DIR/../../scripts" .
cp "$NBHZ_BUILDSCRIPTS_DIR/../../assets/LICENSE.mkxp-z-with-https.txt" .
echo "Building completed with the output folder: $NBHZ_BUILDSCRIPTS_DIR/build"