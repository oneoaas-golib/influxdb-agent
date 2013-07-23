#!/usr/bin/env bash

. exports.sh

build_args=""
if [ "$UPDATE" = "on" ]; then
    build_args="-u"
fi

go get $build_args github.com/errplane/errplane-go \
    github.com/cloudfoundry/gosigar \
    launchpad.net/goyaml \
    code.google.com/p/log4go

go build apps/agent