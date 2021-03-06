#!/usr/bin/env bash

. exports.sh

build_args=""
if [ "$UPDATE" = "on" ]; then
    build_args="-u"
fi

git submodule update --init

go get $build_args github.com/errplane/errplane-go \
    github.com/errplane/gosigar \
    launchpad.net/goyaml \
    code.google.com/p/log4go \
    github.com/bmizerany/pat \
	  github.com/pmylund/go-cache \
    github.com/howeyc/fsnotify

go build apps/agent
go build apps/config-generator
go build apps/sudoers-generator
