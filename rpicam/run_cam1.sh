#!/bin/sh
#
# Copy the avc2ts binary and this script to /usr/local/bin, and add
# the following line to /etc/rc.local:
#
#   /usr/local/bin/run_cam1.sh &
#

TARGET_IP=10.0.0.254
TARGET_PORT=42001
#TARGET_IP=192.168.1.100
#TARGET_PORT=9001

WIDTH=1280
HEIGHT=720
FRAMERATE=30
VIDEORATE=3800000
TSRATE=4200000

avc2ts -s ROCKETCAM1 \
    -i 90 -d 180 -r 36 \
    -x $WIDTH -y $HEIGHT -f $FRAMERATE \
    -b $VIDEORATE -m $TSRATE \
    -n $TARGET_IP:$TARGET_PORT
