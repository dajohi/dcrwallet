#!/bin/sh

set -ex

go version

env GORACE=halt_on_error=1 go test -race -short -vet=all "$@" ./...
