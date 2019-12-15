#!/bin/bash

source speculator.env
cmake $SPEC_H -B$SPEC_B -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=$SPEC_I -G "Ninja"
ninja -C $SPEC_B install
