#!/bin/bash
set -x

sudo apt-get -qq update >/dev/null 2>&1
sudo apt-get -yqq install build-essential checkinstall bison flex gettext git mercurial subversion ninja-build gyp cmake yasm nasm automake pkg-config libtool libtool-bin gcc-multilib g++-multilib clang libgmp-dev libmpfr-dev libmpc-dev libgcrypt-dev gperf ragel texinfo autopoint re2c asciidoc python3-pip docbook2x unzip p7zip-full curl wget >/dev/null 2>&1
pip3 install rst2pdf mako meson >/dev/null 2>&1

git clone https://github.com/shinchiro/mpv-winbuild-cmake.git
cd mpv-winbuild-cmake
git checkout patch
mkdir build64 && cd build64
cmake -DTARGET_ARCH=x86_64-w64-mingw32 -G Ninja ..
ninja gcc
ninja shaderc && ninja spirv-cross && ninja harfbuzz
ninja mpv || ninja mpv || ninja mpv || ninja mpv || ninja mpv
ls && ls | sed "s:^:`pwd`/:"
rm -r mpv-debug*
7za a mpv-winbuild-git-latest.7z mpv*
7za a mpv-winbuild-git-`date +%Y%m%d`.7z mpv-x86_64*
7za a libmpv-winbuild-git-`date +%Y%m%d`.7z mpv-dev*
ls
