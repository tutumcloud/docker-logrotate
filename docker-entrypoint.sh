#!/bin/sh
set -e

if [ "${UP_AND_RUN}" = "true" ]; then
  truncate -s 0 /var/lib/docker/containers/*/*.log
fi

exec "$@"
