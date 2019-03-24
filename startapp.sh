#!/bin/sh

if test -z "$DRP"
then
	echo "FATAL: DRP ENV not set, don't know what DRP Endpoint to bind to"
	exit 1
else
	echo "ENV sets 'DRP' to:  $DRP"
fi

set -x
exec /usr/bin/drpjoin $DRP
