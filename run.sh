#!/bin/bash

source speculator.env



sudo $SPEC_I/speculator_mon -v $SPEC_I/tests/mytest/mytest -c $SPEC_I/speculator.json -o $SPEC_I/results/myoutput
