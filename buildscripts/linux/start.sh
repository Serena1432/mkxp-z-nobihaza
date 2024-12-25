#!/bin/bash

set -e
export NBHZ_BUILDSCRIPTS_DIR="$PWD"
./build_toolchains.sh
./build_mkxp-z.sh
./finalize.sh