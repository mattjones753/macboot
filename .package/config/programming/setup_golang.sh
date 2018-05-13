#!/bin/bash

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

mkdir -p $GOPATH
mkdir -p $GOPATH/src/github.com/mattjones753
