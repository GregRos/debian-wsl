#!/usr/bin/env bash

set -ex

sshStayAlive=/home/gr/.ssh/config
echo "
ServerAliveInterval 600
ServerAliveCountMax 15
" >$sshStayAlive
chown -R gr:gr $sshStayAlive
chmod -R 644 $sshStayAlive
