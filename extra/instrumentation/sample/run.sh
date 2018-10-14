#!/usr/bin/env bash
# linking example

CPPFLAGS=
LLVMLIBS=
LDFLAGS=
# if your instrumentation code calls into LLVM libraries, then comment out the above and use these instead:
#CPPFLAGS=`llvm-config --cppflags`
#LLVMLIBS=`llvm-config --libs`
#LDFLAGS=`llvm-config --ldflags`

## compile the instrumentation module to bitcode
clang -O0 -emit-llvm -c $INSTRUMENTATION/sample/sample.cpp -o sample.bc

## link instrumentation module
llvm-link $BENCHMARKS/welcome/welcome.bc sample.bc -o welcome.linked.bc

## compile to native object file
llc -filetype=obj welcome.linked.bc -o=welcome.o

## generate native executable
g++ welcome.o -o welcome.exe

./welcome.exe

