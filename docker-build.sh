#!/bin/bash

EXTRA_BUILD_OPTIONS=${1:-""}

set -x
#[[ ! -f drpjoin ]] && ./drpjoin-install.sh
docker build ${EXTRA_BUILD_OPTIONS} -t sygibson/drpjoin .
