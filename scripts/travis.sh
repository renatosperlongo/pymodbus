#!/bin/bash -e

if [ "$TRAVIS_OS_NAME" = osx ]; then
  pip3 install virtualenv
  VIRTUAL_ENV="$HOME/.virtualenvs/python3.7"
  if [ ! -x "$VIRTUAL_ENV/bin/python" ]; then
    virtualenv -p python3 "$VIRTUAL_ENV"
  fi
  source "$VIRTUAL_ENV/bin/activate"
fi

eval "$@"
