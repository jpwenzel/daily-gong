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

if [ ! -d "$INSTALL_DIR" ]; then
  mkdir -p "$INSTALL_DIR"
fi
cp * "$INSTALL_DIR"/
cp "$INSTALL_DIR"/crontab /etc/cron.d/daily-gong
