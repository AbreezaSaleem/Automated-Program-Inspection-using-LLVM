#!/bin/bash
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

opt -load $LLVMLIB/CSE231.so -CreateTestCases -testcase $1 < $BENCHMARKS/solution/solution.bc > $scriptDir/../testCases/$1.bc

llvm-dis $scriptDir/../testCases/$1.bc