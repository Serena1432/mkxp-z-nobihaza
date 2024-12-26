#!/bin/bash

set -e
echo "[*] Building mkxp-z..."
cd "$NBHZ_BUILDSCRIPTS_DIR/../../"
source linux/vars.sh
source ~/.rvm/scripts/rvm
rvm use 1.9.3
export "LD_LIBRARY_PATH=$MY_RUBY_HOME/lib:$LD_LIBRARY_PATH"
export "LIBRARY_PATH=$MY_RUBY_HOME/lib:$LIBRARY_PATH"
export "LDFLAGS=$LDFLAGS -L$MY_RUBY_HOME/lib"
export "PKG_CONFIG_LIBDIR=$PKG_CONFIG_LIBDIR:$MY_RUBY_HOME/lib/pkgconfig"
export "CFLAGS=$CFLAGS -I$MY_RUBY_HOME/include/ruby-1.9.1"
meson setup build --bindir=. "--prefix=$NBHZ_BUILDSCRIPTS_DIR/build"
cd build
ninja
ninja install