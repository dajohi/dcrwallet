#!/bin/sh

set -ex

GO=${GO:-go}

${GO} version

${GO} test -short -race -vet=all "$@" ./...
