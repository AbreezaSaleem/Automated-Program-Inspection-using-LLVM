#!/bin/bash
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $scriptDir/
> "outputss"/functionName.txt
> "outputss"/log.txt

source startenv.sh
make llvm && clear
cd extra/benchmarks/solution
clang -O0 -emit-llvm -c solution.cpp -o solution.bc && llvm-dis solution.bc
cd ../"student"
clang -O0 -emit-llvm -c student.cpp -o student.bc && llvm-dis student.bc

cd ../../../

opt -load $LLVMLIB/CSE231.so -ExtractTestCases < $BENCHMARKS/solution/solution.bc > /dev/null

opt -load $LLVMLIB/CSE231.so -TraverseFunctionCalls < $BENCHMARKS/student/student.bc > /dev/null