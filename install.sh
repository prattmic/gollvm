#!/bin/sh
export CGO_CFLAGS="`llvm-config --cflags`"
export CGO_LDFLAGS="`llvm-config --ldflags` -Wl,-L`llvm-config --libdir` -lLLVM-`llvm-config --version`"
go get $* github.com/axw/gollvm/llvm
