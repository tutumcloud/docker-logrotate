#!/bin/sh
set -e

if [ "${UP_AND_RUN}" = "true" ]; then
  truncate -s 0 /var/lib/docker/containers/*/*.log
fi

if [ -n "${BASE64_ENCODED_LOGROTATE_CONF}" ]; then
  echo "${BASE64_ENCODED_LOGROTATE_CONF}" | base64 -d > /etc/logrotate.conf
fi

exec "$@"
