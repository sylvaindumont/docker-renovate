#!/bin/sh

printenv >> /etc/environment
crond -l 2 -f 2>&1 >> /dev/null &
tail -F /var/log/renovate.log
