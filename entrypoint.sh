#!/bin/sh

printenv >> /etc/environment
crond -f
