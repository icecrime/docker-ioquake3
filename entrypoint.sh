#!/bin/bash

PKPATH="/usr/lib/ioquake3/baseq3/pak0.pk3"

# Test for the existence of the pak0.pk3 file
if [ ! -f $PKPATH ]; then
    echo "!!! Pak0.pk3 is missing !!!"
    echo "Please bind mount pak0.pk3 to the root of the container."
    exit 1
fi

# Run ioquake
/usr/lib/ioquake3/ioquake3 $*
