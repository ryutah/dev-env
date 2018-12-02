#!/bin/sh

set -eux

go get -u \
  github.com/motemen/ghq \
  github.com/golang/dep/cmd/dep \
  github.com/motemen/gore \
  github.com/golang/mock/gomock \
  github.com/golang/mock/mockgen \
  google.golang.org/grpc \
  github.com/golang/protobuf/protoc-gen-go \
  github.com/hhatto/gocloc/cmd/gocloc \
  github.com/mdempsky/gocode \
  golang.org/x/tools/...
