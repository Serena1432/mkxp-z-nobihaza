#!/bin/bash

set -e
echo "[*] Finalizing..."
source ~/.rvm/scripts/rvm
rvm use 1.9.3
cd "$NBHZ_BUILDSCRIPTS_DIR/build"
cp -r "$MY_RUBY_HOME/lib/ruby/1.9.1" .
mv ./1.9.1 ./stdlib
cp "$NBHZ_BUILDSCRIPTS_DIR/../../mkxp.json" .
cp -r "$NBHZ_BUILDSCRIPTS_DIR/../../scripts" .
cp "$NBHZ_BUILDSCRIPTS_DIR/../../assets/LICENSE.mkxp-z-with-https.txt" .
echo "Building completed with the output folder: $NBHZ_BUILDSCRIPTS_DIR/build"