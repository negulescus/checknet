#!/bin/sh
#
# checknet.sh
# put in /usr/local/bin (by copying beep.sh) or make sure is executable
#
# Checks if the internet is reachable by pinging google dns
# and restarts the pppoe interface if not
if [ "$(ping -c 1 8.8.8.8 | grep '100% packet loss' )" != "" ]; then
	logger -s -t $(basename $0) "Internet isn't present. Trying to restart PPPoE..."
	/usr/local/sbin/pfSctl -c 'interface reload wan'
else
	logger -s -t $(basename $0) "Internet is present."
	exit 0
fi
