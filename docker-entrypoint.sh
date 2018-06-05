#!/usr/bin/env sh

set -e

if [ -f Pipfile ]; then
    pipenv install
    pipenv install -d
elif [ -f requirements.txt ]; then
    pip install -r requirements.txt
fi

exec "$@"
