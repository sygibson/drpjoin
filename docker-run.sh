#!/usr/bin/env bash

###
#  Set our DRP Endpoint appropriately:
#    * try to use RS_ENDPOINT variable
#    * else, prompt for DRP Endpoint
###
[[ -z "$RS_ENDPOINT" ]] && read -p "Enter DRP Endpoint: " RS
DRPJOIN="-e DRP=$RS_ENDPOINT"
EXTRA_ARGS="$*"

set -x
docker run $DRPJOIN $EXTRA_ARGS --rm sygibson/drpjoin 

