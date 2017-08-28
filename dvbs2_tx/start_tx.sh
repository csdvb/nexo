#!/bin/sh
#
# dvbs2_tx
#

export VOLK_CONFIGPATH=/usr/local/etc
/usr/local/bin/dvbs2_tx -u -b 7M -g 30 &
