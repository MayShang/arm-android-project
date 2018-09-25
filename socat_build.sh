#!/bin/bash

. abi_settings.sh $1 $2 $3

pushd socat

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
  --enable-help \
  --enable-stdio \
  --enable-fdnum --enable-file --enable-creat \
  --enable-gopen --enable-pipe --enable-termios \
  --enable-unix --enable-ip4 --enable-ip6 \
  --enable-rawip --enable-tcp --enable-udp \
  --enable-listen --enable-proxy --enable-exec \
  --enable-system --enable-pty --enable-readline \
  --enable-openssl --enable-sycls --enable-filan \
  --enable-retry --enable-libwrap --enable-fips \
  CFLAGS="-pie" || exit 1

make -j${NUMBER_OF_CORES} install || exit 1

popd
