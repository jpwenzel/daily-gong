#!/bin/bash
#
# daily-gong.sh
#
# Have Big Ben invite everyone to the daily stand-up meeting.

# Sleep for 45 seconds and then start playing the Big Ben chime just in time to
# finish at second 0 of the next minute.
sleep 45

/usr/bin/play /opt/local/daily-gong/bigben-15s.wav
