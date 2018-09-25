#!/bin/bash

. abi_settings.sh $1 $2 $3

pushd amhello

. am_config.sh

make clean

case $1 in
  armeabi-v7a | armeabi-v7a-neon)
    HOST=arm-linux
  ;;
  x86)
    HOST=i686-linux
  ;;
esac


./configure \
  --host="$HOST" \
  --prefix="${2}/build/${1}" \
  CFLAGS="-pie" || exit 1

make -j${NUMBER_OF_CORES} install || exit 1

popd
