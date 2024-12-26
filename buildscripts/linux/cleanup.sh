#!/bin/bash

set -e
rm -rf build
rm -rf "$PWD/../../build"
cd "$PWD/../../linux"
rm -rf build-*
rm -rf downloads