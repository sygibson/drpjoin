#!/bin/sh

set -e
set -x

#### ---- Get Digital Rebar Provision "drpjoin" ---- ####

export JOIN="https://raw.githubusercontent.com/digitalrebar/provision/9d70a4999bc6890063a18a7a395f0e9580127ec2/tools/drpjoin"

curl --insecure -s $JOIN -o drpjoin && \
  chmod 755 drpjoin

