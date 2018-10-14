#!/bin/bash
opt -load $LLVMLIB/CSE231.so -FunctionTestor -fun ${1} < $BENCHMARKS/${2} > /dev/null