#!/bin/bash
#
# install.sh
#
# This script will install daily-gong

INSTALL_DIR="/opt/local/daily-gong"

# Script must be run as root
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

read -p "Which user shall run the daily-gong script (default: root)?" DAILY_GONG_RUNASUSER
if [ -z $DAILY_GONG_RUNASUSER ] ; then
  DAILY_GONG_RUNASUSER="root"
else
  DAILY_GONG_RUNASUSER="$(echo -e "${DAILY_GONG_RUNASUSER}" | tr -d '[[:space:]]')"
fi

if [ ! -d "$INSTALL_DIR" ]; then
  mkdir -p "$INSTALL_DIR"
fi
cp * "$INSTALL_DIR"/

/bin/sed "s/DAILY_GONG_RUNASUSER/$DAILY_GONG_RUNASUSER/" crontab > /etc/cron.d/cron-daily-gong
