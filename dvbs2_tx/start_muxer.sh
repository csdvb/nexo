#!/bin/sh
#
# Launch mptsd muxer
#

PREFIX=/usr/local/etc
MPTSD_CONF=$PREFIX/mptsd.conf
MPTSD_CHAN=$PREFIX/mptsd_channels.conf
MPTSD_EPG=$PREFIX/mptsd_epg.conf
MPTSD_NIT=$PREFIX/mptsd_nit.conf

/usr/local/bin/mptsd -O 127.0.0.1 -B 12.1 \
    -g $MPTSD_CONF -c $MPTSD_CHAN -e $MPTSD_EPG -n $MPTSD_NIT &
