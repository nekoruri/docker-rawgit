#!/bin/bash

/etc/init.d/nginx start

export NODE_ENV=production
export PORT=8100
export SRC_DIR=/data/www/rawgit.com

if [ -n "$FQDN" ]; then
    sed -i -e "s/'cdn\.rawgit\.com'/'$FQDN'/" /data/www/rawgit.com/conf/index.js
    sed -i -e "s/'rawgit\.com'/'$FQDN'/" /data/www/rawgit.com/conf/index.js
fi

/usr/bin/nodejs -- /data/www/rawgit.com/web.js
