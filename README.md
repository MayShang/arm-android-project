==============

* arm android project
* Supports Android L

Supported Architecture
----
* armv7
* armv7-neon
* x86

Instructions
----
* Set environment variable
  1. export ANDROID_NDK={Android NDK Base Path}
* Run following commands to compile ffmpeg
  1. sudo apt-get --quiet --yes install build-essential git autoconf libtool pkg-config gperf yasm
  2. download module from github
  3. ./android_build.sh
* To update submodules and libraries you can use ./init_update_libs.sh command
* Find the executable binary in build directory.
* get idea from [ffmpeg-android](https://github.com/WritingMinds/ffmpeg-android) project

License
----
  check files LICENSE.GPLv3 and LICENSE
