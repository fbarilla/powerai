#!/bin/bash

if [ ! -d /data/demo ]; then
    cp -a /usr/local/samples /data/demo
fi

chown root:root /var/run/sshd
/etc/init.d/ssh start
exec /usr/local/bin/nimbix_notebook "$@"

