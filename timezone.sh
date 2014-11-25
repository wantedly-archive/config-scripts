#!/bin/sh
#
# Usage: timezone.sh <timezone>
# Description: Set timezone for container
#

set -e

ZONEINFO=/usr/share/zoneinfo/$1

if [ ! -f $ZONEINFO ]
then
    echo "Please specify timezone (ex. Asia/Tokyo)"
    exit 1
fi

if [ -f /etc/localtime ]
then
    rm /etc/localtime
fi

ln -s $ZONEINFO /etc/localtime
