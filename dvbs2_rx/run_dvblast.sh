#!/bin/sh


#dvblast -r /tmp/dvblast -c streaming.conf -f 11030000 -s 6250000 -m psk_8 -a 0
dvblast -r /tmp/dvblast -c lantest.conf -f 11030000 -s 6250000 -m psk_8 -a 0

# send full TS stream
#dvblast -r /tmp/dvblast -f 11030000 -s 6250000 -m psk_8 -a 0 -d 192.168.10.50:14038 -U

