#!/bin/bash
#
# daily-gong.sh
#
# Have Big Ben invite everyone to the daily stand-up meeting.

# Sleep for 45 seconds to end the chime playing just on time at 10:15.
sleep 45

/usr/bin/play /opt/local/daily-gong/bigben-15s.wav
