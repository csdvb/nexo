#!/bin/bash

W=640
H=360

gst-launch-1.0 udpsrc port=9001 ! \
    tsparse ! tsdemux ! h264parse ! avdec_h264 ! \
    videoconvert ! videoscale ! video/x-raw,width=$W,height=$H ! \
    autovideosink sync=false &

gst-launch-1.0 udpsrc port=9002 ! \
    tsparse ! tsdemux ! h264parse ! avdec_h264 ! \
    videoconvert ! videoscale ! video/x-raw,width=$W,height=$H ! \
    autovideosink sync=false &

gst-launch-1.0 udpsrc port=9003 ! \
    tsparse ! tsdemux ! h264parse ! avdec_h264 ! \
    videoconvert ! videoscale ! video/x-raw,width=$W,height=$H ! \
    videoflip method=2 ! \
    autovideosink sync=false

killall gst-launch-1.0

