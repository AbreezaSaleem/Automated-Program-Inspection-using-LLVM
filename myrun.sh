#!/usr/bin/env bash
# linking example
opt -load  $LLVMLIB/CSE231.so -insertFunctions < if.bc > first.bc

CPPFLAGS=
LLVMLIBS=
LDFLAGS=
# if your instrumentation code calls into LLVM libraries, then comment out the above and use these instead:
#CPPFLAGS=`llvm-config --cppflags`
#LLVMLIBS=`llvm-config --libs`
#LDFLAGS=`llvm-config --ldflags`

## compile the instrumentation module to bitcode
clang $CPPFLAGS -O0 -emit-llvm -c linkingcode.cpp -o linkingcode.bc

## link instrumentation module
llvm-link first.bc linkingcode.bc -o first.linked.bc

## compile to native object file
llc -filetype=obj first.linked.bc -o=first.o

## generate native executable
g++ first.o $LLVMLIBS $LDFLAGS -o first.exe

./first.exe

