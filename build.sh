#!/bin/bash
set -x

main() {
    gitdir=$(pwd)
    clang_root=$(pwd)/clang_root
    buildroot=$(pwd)
    srcdir=$(pwd)/src_packages
    local target=$1
    compiler=$2

    prepare
    if [ "$target" == "32" ]; then
        package "32"
    elif [ "$target" == "64" ]; then
        package "64"
    elif [ "$target" == "64-v3" ]; then
        package "64-v3"
    elif [ "$target" == "all-64" ]; then
        package "64"
        package "64-v3"
    else [ "$target" == "all" ];
        package "32"
        package "64"
        package "64-v3"
    fi
    rm -rf ./release/mpv-packaging-master
}

package() {
    local bit=$1
    if [ $bit == "32" ]; then
        local arch="i686"
    elif [ $bit == "64" ]; then
        local arch="x86_64"
    elif [ $bit == "64-v3" ]; then
        local arch="x86_64"
        local gcc_arch="-DGCC_ARCH=x86-64-v3"
        local x86_64_level="-v3"
    fi

    build $bit $arch $gcc_arch
    zip $bit $arch $x86_64_level
    sudo rm -rf $buildroot/build$bit/mpv-*
    sudo chmod -R a+rwx $buildroot/build$bit
}

build() {
    local bit=$1
    local arch=$2
    local gcc_arch=$3
    
    if [ "$compiler" == "clang" ]; then
        clang_option="-DLLVM_ENABLE_LTO=Thin -DCMAKE_INSTALL_PREFIX=$clang_root -DMINGW_INSTALL_PREFIX=$buildroot/build$bit/install/$arch-w64-mingw32"
    fi
    cmake -DTARGET_ARCH=$arch-w64-mingw32 $gcc_arch -DCOMPILER_TOOLCHAIN=$compiler $clang_option -DALWAYS_REMOVE_BUILDFILES=ON -DSINGLE_SOURCE_LOCATION=$srcdir -DRUSTUP_LOCATION=$buildroot/install_rustup -G Ninja -H$gitdir -B$buildroot/build$bit

    ninja -C $buildroot/build$bit {libzvbi,libopenmpt}-removeprefix || true
    ninja -C $buildroot/build$bit download || true
    if [ "$compiler" == "gcc" ] && [ ! "$(ls -A $buildroot/build$bit/install/bin)" ]; then
        ninja -C $buildroot/build$bit gcc
    elif [ "$compiler" == "clang" ] && [ ! "$(ls -A $clang_root/bin)" ]; then
        ninja -C $buildroot/build$bit llvm && ninja -C $buildroot/build$bit llvm-clang
    fi

    if [[ ! "$(ls -A $buildroot/install_rustup/.cargo/bin)" ]]; then
        ninja -C $buildroot/build$bit rustup-fullclean
        ninja -C $buildroot/build$bit rustup
    fi
    ninja -C $buildroot/build$bit update
    ninja -C $buildroot/build$bit mpv-fullclean
    ninja -C $buildroot/build$bit libjxl
    ninja -C $buildroot/build$bit vulkan
    ninja -C $buildroot/build$bit mpv || ninja -C $buildroot/build$bit mpv
    if [ -d $buildroot/build$bit/mpv-$arch* ] ; then
        echo "Successfully compiled $bit-bit. Continue"
    else
        echo "Failed compiled $bit-bit. Stop"
        exit 1
    fi
    
    ninja -C $buildroot/build$bit cargo-clean
}

zip() {
    local bit=$1
    local arch=$2
    local x86_64_level=$3

    rm -rf $buildroot/build$bit/mpv-debug-*
    mv $buildroot/build$bit/mpv-* $gitdir/release
    cd ./release/mpv-packaging-master
    cp -r ./mpv-root/* ./$arch/d3dcompiler_43.dll ../mpv-$arch$x86_64_level*
    cd ..
    for dir in ./mpv*$arch$x86_64_level*; do
        if [ -d $dir ]; then
            7z a -m0=lzma2 -mx=9 -ms=on $dir.7z $dir/* -x!*.7z
            rm -rf $dir
        fi
    done
    cd ..
}

download_mpv_package() {
    local package_url="https://codeload.github.com/dyphire/mpv-packaging/zip/master"
    if [ -e mpv-packaging.zip ]; then
        echo "Package exists. Check if it is newer.."
        remote_commit=$(git ls-remote https://github.com/shinchiro/mpv-packaging.git master | awk '{print $1;}')
        local_commit=$(unzip -z mpv-packaging.zip | tail +2)
        if [ "$remote_commit" != "$local_commit" ]; then
            wget -O mpv-packaging.zip $package_url
        fi
    else
        wget -O mpv-packaging.zip $package_url
    fi
    unzip -o mpv-packaging.zip
}

prepare() {
    mkdir -p ./release
    cd ./release
    download_mpv_package
    cd ./mpv-packaging-master
    7z x -y ./d3dcompiler*.7z
    cd ../..
}

while getopts t:c: flag
do
    case "${flag}" in
        t) target=${OPTARG};;
        c) compiler=${OPTARG};;
    esac
done

main "${target:-all-64}" "${compiler:-gcc}"
