#!/bin/bash
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

> outputss/exists.txt

opt -load $LLVMLIB/CSE231.so -FunctionExists < $BENCHMARKS/solution/solution.bc > /dev/null

result=$(<outputss/exists.txt)
echo $result
[[ result -eq 1 ]]