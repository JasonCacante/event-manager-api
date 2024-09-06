#!/bin/sh

set -e

if [ -f /home/developer/app/tmp/pids/server.pi ]; then
  rm /home/developer/app/tmp/pids/server.pid
fi

bundle exec rails s -b 0.0.0.0
