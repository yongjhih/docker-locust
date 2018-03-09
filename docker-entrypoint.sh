#!/usr/bin/env sh

set -e

if [ -f requirements.txt ]; then
    pip install -r requirements.txt
fi

exec "$@"
