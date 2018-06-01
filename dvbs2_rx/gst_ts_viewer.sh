#!/bin/bash

PORT=5000

if [ $# -eq 1 ]; then
    PORT=$1
fi

gst-launch-1.0 -v udpsrc port=$PORT ! \
    tsparse ! tsdemux ! h264parse ! avdec_h264 ! \
    videoconvert ! \
    autovideosink sync=false
