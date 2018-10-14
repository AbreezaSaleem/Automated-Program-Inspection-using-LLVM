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
clang $CPPFLAGS -O0 -emit-llvm -c $INSTRUMENTATION/../benchmarks/student/student.cpp -o student.bc

## link instrumentation module
llvm-link result.bc student.bc -o result.linked.bc

## compile to native object file
llc -filetype=obj result.linked.bc -o=result.o

## generate native executable
g++ result.o $LLVMLIBS $LDFLAGS -o result.exe

./result.exe




























