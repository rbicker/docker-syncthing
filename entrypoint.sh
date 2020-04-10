#!/bin/sh

SRC_PATH="/usr/src/syncthing"

if [ -z $1 ]; then
  echo "error: no cmd given"
  echo "run this image with something like:"
  echo "stdiscosrv --listen 12345"
  exit 1
fi

if [ ! -d $SRC_PATH ]; then
  echo "${SRC_PATH} does not exist, cloning and building syncthing"
  mkdir -p $SRC_PATH && cd $SRC_PATH
  git clone https://github.com/syncthing/syncthing.git .
  go run build.go
  go run build.go build strelaysrv
  cp $SRC_PATH/strelaysrv /usr/local/bin/
  cp $SRC_PATH/bin/* /usr/local/bin/
fi

echo "running ${@}"
eval "$@"
