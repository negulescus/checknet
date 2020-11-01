#!/bin/sh
#
# speedcheck.sh
# put in /usr/local/bin (by copying beep.sh) or make sure is executable
#
# Checks speed of the internet connection using the speedtest package
# Outputs ping (ms), download (MB/s), upload (MB/s)
speedtest --server 7682 | awk -v FS="(: | ms| Mbit/s)" '{print $2}' | tr '\n' ',' | sed 's/^.....//' | sed 's/.\{2\}$//' | sed 's/,\{2,\}/,/g' | logger -t speedtest
