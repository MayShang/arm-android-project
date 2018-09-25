#!/bin/bash

. abi_settings.sh $1 $2 $3

pushd hello

make clean

case $1 in
  armeabi-v7a | armeabi-v7a-neon)
    HOST=arm-linux
  ;;
  x86)
    HOST=i686-linux
  ;;
esac

make || exit 1

popd
