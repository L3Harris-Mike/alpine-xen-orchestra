#!/bin/sh
set -e
rpcbind

# storge directory and fix perms
mkdir -p /app/data
chown -R xenorchestra:xenorchestra /app/data

# start App
cd /app/xen-orchestra/packages/xo-server
exec su-exec ${USER} "$@"
