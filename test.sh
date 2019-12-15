#!/bin/bash

source speculator.env

#point the test asm file
ln -s $SPEC_H/templates/x86/template.asm $SPEC_H/tests/mytest.asm
#compiler the asm and speculator
cmake $SPEC_H -B$SPEC_B -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=$SPEC_I -G "Ninja"
ninja -C $SPEC_B install

#run and test
sudo $SPEC_I/speculator_mon -v $SPEC_I/tests/mytest/mytest -c $SPEC_I/speculator.json -o $SPEC_I/results/myoutput
