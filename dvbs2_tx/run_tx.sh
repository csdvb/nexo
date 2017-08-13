#!/bin/sh

export VOLK_CONFIGPATH=/usr/local/etc

/usr/local/bin/mptsd -O 127.0.0.1 -B 12.1 &
/usr/local/bin/dvbs2_tx -u &
