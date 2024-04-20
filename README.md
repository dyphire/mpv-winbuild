# mpv-build

[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/dyphire/mpv-winbuild/mpv.yml?branch=master)](https://github.com/dyphire/mpv-winbuild/actions)
[![releases](https://img.shields.io/github/v/release/dyphire/mpv-winbuild)](https://github.com/dyphire/mpv-winbuild/releases)
[![downloads](https://img.shields.io/github/downloads/dyphire/mpv-winbuild/total)](https://github.com/dyphire/mpv-winbuild/releases)

Forked from [zhongfly/mpv-winbuild](https://github.com/zhongfly/mpv-winbuild)

Use Github Action to build mpv-win with latest commit.

  - **MPV** Based on https://github.com/shinchiro/mpv-winbuild-cmake. [![mpv-winbuild-cmake](https://flat.badgen.net/github/last-commit/shinchiro/mpv-winbuild-cmake?scale=0.8&cache=1800)](https://github.com/shinchiro/mpv-winbuild-cmake)
  - **MPV_OWN** Based on https://github.com/dyphire/mpv-winbuild-cmake. [![mpv-winbuild-cmake](https://flat.badgen.net/github/last-commit/dyphire/mpv-winbuild-cmake?scale=0.8&cache=1800)](https://github.com/dyphire/mpv-winbuild-cmake) 
     - **Changed**
        - LuaSocket is built and included, so [simple-mpv-webui](https://github.com/open-dynaMIX/simple-mpv-webui) can be used out of the box
     - **Fixes and Minor Enhancements**
        -  davs2: enable 10bit
        -  libass: parse script properties even if missing "[Script Info]"
        -  FFmpeg: check for double BOM in UTF-16 subtitle files
        -  FFmpeg: Parsing ASS subtitle files with missing [Script Info] in the first line
        -  FFmpeg: only handle negative durations for non-ASS subs
        -  FFmpeg: handle long TrueHD input_timing gaps
        -  FFmpeg: Potential TrueHD FFmpeg Passthrough Fix

Builds run daily at 08:00 UTC (or GitHubs idea of that time) and are automatically released on success.

This repo only provides 64-bit version. If you need a 32-bit version, you can fork this repo and edit mpv.yml.
> [!NOTE]
> `mpv-dev-x86_64-xxxx.7z` is 64-bit libmpv version, including the `libmpv-2.dll` file.
> 
> Some media players based on libmpv will need `libmpv-2.dll`.You can upgrade their built-in libmpv version by overwriting libmpv-2.dll.

### Release Retention Policy
- The last 30 days of builds will be retained.

## Information about packages

Same as [shinchiro](https://github.com/shinchiro/mpv-winbuild-cmake/blob/master/README.md#information-about-packages)

-   Git/Hg
    -   mpv [![mpv](https://flat.badgen.net/github/last-commit/mpv-player/mpv?scale=0.8&cache=1800)](https://github.com/mpv-player/mpv)
    -   FFmpeg [![FFmpeg](https://flat.badgen.net/github/last-commit/FFmpeg/FFmpeg?scale=0.8&cache=1800)](https://github.com/FFmpeg/FFmpeg)
    -   libass [![libass](https://flat.badgen.net/github/last-commit/libass/libass?scale=0.8&cache=1800)](https://github.com/libass/libass)
    -   libplacebo (with [glad](https://github.com/Dav1dde/glad), [fast_float](https://github.com/fastfloat/fast_float), [xxhash](https://github.com/Cyan4973/xxHash)) [![libplacebo](https://flat.badgen.net/github/last-commit/haasn/libplacebo?scale=0.8&cache=1800)](https://github.com/haasn/libplacebo)
    -   vulkan-header [![Vulkan-Headers](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Headers/main?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Headers)
    -   vulkan [![Vulkan-Loader](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Loader/main?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Loader) 
    -   ANGLE [![ANGLE](https://flat.badgen.net/github/last-commit/google/angle/main?scale=0.8&cache=1800)](https://github.com/google/angle)
    -   aom [![aom](https://flat.badgen.net/github/last-commit/m-ab-s/aom?scale=0.8&cache=1800)](https://aomedia.googlesource.com/aom)
    -   xz [![xz](https://flat.badgen.net/gitlab/last-commit/shinchiro/xz?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/xz)
    -   x264 [![x264](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/x264?scale=0.8&cache=1800)](https://code.videolan.org/videolan/x264)
    -   x265 (multilib) [![x265](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/bitbucket/multicoreware/x265_git?scale=0.8&cache=1800)](https://bitbucket.org/multicoreware/x265_git)
    -   uchardet [![uchardet](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/gitlab.freedesktop.org/uchardet/uchardet?scale=0.8&cache=1800)](https://gitlab.freedesktop.org/uchardet/uchardet)
    -   rubberband [![rubberband](https://flat.badgen.net/github/last-commit/breakfastquay/rubberband/default?scale=0.8&cache=1800)](https://github.com/breakfastquay/rubberband)
    -   opus [![opus](https://flat.badgen.net/github/last-commit/xiph/opus?scale=0.8&cache=1800)](https://github.com/xiph/opus)
    -   ogg [![ogg](https://flat.badgen.net/github/last-commit/xiph/ogg?scale=0.8&cache=1800)](https://github.com/xiph/ogg)
    -   openal-soft [![openal-soft](https://flat.badgen.net/github/last-commit/kcat/openal-soft?scale=0.8&cache=1800)](https://github.com/kcat/openal-soft)
    -   luajit [![luajit](https://flat.badgen.net/github/last-commit/LuaJIT/LuaJIT?scale=0.8&cache=1800)](https://github.com/LuaJIT/LuaJIT)
     -   libvpx [![libvpx](https://flat.badgen.net/github/last-commit/webmproject/libvpx/main?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libvpx)
    -   luasocket [![luasocket](https://flat.badgen.net/github/last-commit/lunarmodules/luasocket?scale=0.8&cache=1800)](https://github.com/lunarmodules/luasocket.git)
    -   libwebp [![libwebp](https://flat.badgen.net/github/last-commit/webmproject/libwebp/main?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libwebp)
    -   libpng [![libpng](https://flat.badgen.net/github/last-commit/glennrp/libpng?scale=0.8&cache=1800)](https://github.com/glennrp/libpng)
    -   libsdl2 [![libpng](https://flat.badgen.net/github/last-commit/libsdl-org/SDL/main?scale=0.8&cache=1800)](https://github.com/libsdl-org/SDL)
    -   libsoxr [![libsoxr](https://flat.badgen.net/gitlab/last-commit/shinchiro/soxr?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/soxr)
    -   libzimg (with [graphengine](https://github.com/sekrit-twc/graphengine)) [![libzimg](https://flat.badgen.net/github/last-commit/sekrit-twc/zimg?scale=0.8&cache=1800)](https://github.com/sekrit-twc/zimg)
    -   libdvdread [![libdvdread](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libdvdread?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdread)
    -   libdvdnav [![libdvdnav](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libdvdnav?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdnav)
    -   libdvdcss [![libdvdcss](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libdvdcss?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdcss)
    -   libudfread [![libudfread](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libudfread?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libudfread)
    -   libbluray [![libbluray](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/libbluray?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libbluray)
    -   libunibreak [![libunibreak](https://flat.badgen.net/github/last-commit/adah1972/libunibreak?scale=0.8&cache=1800)](https://github.com/adah1972/libunibreak.git)
    -   libmysofa [![libmysofa](https://flat.badgen.net/github/last-commit/hoene/libmysofa/main?scale=0.8&cache=1800)](https://github.com/hoene/libmysofa)
    -   lcms2 [![lcms2](https://flat.badgen.net/github/last-commit/mm2/Little-CMS?scale=0.8&cache=1800)](https://github.com/mm2/Little-CMS)
    -   lame [![lame](https://flat.badgen.net/gitlab/last-commit/shinchiro//lame?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/lame)
    -   harfbuzz [![harfbuzz](https://flat.badgen.net/github/last-commit/harfbuzz/harfbuzz/main?scale=0.8&cache=1800)](https://github.com/harfbuzz/harfbuzz)
    -   game-music-emu [![game-music-emu](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/bitbucket/mpyne/game-music-emu?scale=0.8&cache=1800)](https://bitbucket.org/mpyne/game-music-emu)
    -   freetype2 [![freetype2](https://flat.badgen.net/github/last-commit/freetype/freetype?scale=0.8&cache=1800)](https://github.com/freetype/freetype)mujs [![mujs](https://flat.badgen.net/github/last-commit/ccxvii/mujs?scale=0.8&cache=1800)](https://github.com/ccxvii/mujs)
    -   libarchive [![libarchive](https://flat.badgen.net/github/last-commit/libarchive/libarchive?scale=0.8&cache=1800)](https://github.com/libarchive/libarchive)
    -   libjpeg [![libjpeg](https://flat.badgen.net/github/last-commit/libjpeg-turbo/libjpeg-turbo/main?scale=0.8&cache=1800)](https://github.com/libjpeg-turbo/libjpeg-turbo)
    -   shaderc (with [spirv-headers](https://github.com/KhronosGroup/SPIRV-Headers), [spirv-tools](https://github.com/KhronosGroup/SPIRV-Tools), [glslang](https://github.com/KhronosGroup/glslang)) [![shaderc](https://flat.badgen.net/github/last-commit/google/shaderc/main?scale=0.8&cache=1800)](https://github.com/google/shaderc.git)
    -   speex [![speex](https://flat.badgen.net/github/last-commit/xiph/speex?scale=0.8&cache=1800)](https://github.com/xiph/speex)
    -   spirv-cross [![spirv-cross](https://flat.badgen.net/github/last-commit/KhronosGroup/SPIRV-Cross?scale=0.8&cache=1800)](https://github.com/KhronosGroup/SPIRV-Cross)
    -   fribidi [![fribidi](https://flat.badgen.net/github/last-commit/fribidi/fribidi?scale=0.8&cache=1800)](https://github.com/fribidi/fribidi)
    -   libxml2 [![libxml2](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/gitlab.gnome.org/GNOME/libxml2?scale=0.8&cache=1800)](https://gitlab.gnome.org/GNOME/libxml2)
    -   amf-headers [![amf-headers](https://flat.badgen.net/github/last-commit/GPUOpen-LibrariesAndSDKs/AMF?scale=0.8&cache=1800)](https://github.com/GPUOpen-LibrariesAndSDKs/AMF/tree/master/amf/public/include)
    -   avisynth-headers [![avisynth-headers](https://flat.badgen.net/github/last-commit/AviSynth/AviSynthPlus?scale=0.8&cache=1800)](https://github.com/AviSynth/AviSynthPlus)
    -   nvcodec-headers [![nvcodec-headers](https://flat.badgen.net/github/last-commit/FFmpeg/nv-codec-headers?scale=0.8&cache=1800)](https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git)
    -   libvpl [![libvpl](https://flat.badgen.net/github/last-commit/oneapi-src/oneVPL?scale=0.8&cache=1800)](https://github.com/oneapi-src/oneVPL.git)
    -   bzip2 [![bzip2](https://flat.badgen.net/gitlab/last-commit/bzip2/bzip2?scale=0.8&cache=1800)](https://gitlab.com/bzip2/bzip2)
    -   dav1d [![dav1d](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/code.videolan.org/videolan/dav1d?scale=0.8&cache=1800)](https://code.videolan.org/videolan/dav1d/)
    -   expat [![expat](https://flat.badgen.net/github/last-commit/libexpat/libexpat?scale=0.8&cache=1800)](https://github.com/libexpat/libexpat)
    -   fontconfig [![fontconfig](https://flat.badgen.net/https/latest-commit-badgen.vercel.app/gitlab/gitlab.freedesktop.org/fontconfig/fontconfig?scale=0.8&cache=1800)](https://gitlab.freedesktop.org/fontconfig/fontconfig)
    -   libbs2b [![libbs2b](https://flat.badgen.net/github/last-commit/alexmarsev/libbs2b?scale=0.8&cache=1800)](https://github.com/alexmarsev/libbs2b)
    -   libssh [![libssh](https://flat.badgen.net/gitlab/last-commit/libssh/libssh-mirror?scale=0.8&cache=1800)](https://git.libssh.org/projects/libssh.git)
    -   libsrt [![libsrt](https://flat.badgen.net/github/last-commit/Haivision/srt?scale=0.8&cache=1800)](https://github.com/Haivision/srt)
    -   libjxl (with [brotli](https://github.com/google/brotli), [highway](https://github.com/google/highway)) [![libjxl](https://flat.badgen.net/github/last-commit/libjxl/libjxl/main?scale=0.8&cache=1800)](https://github.com/libjxl/libjxl)
    -   libmodplug [![libmodplug](https://flat.badgen.net/github/last-commit/Konstanty/libmodplug?scale=0.8&cache=1800)](https://github.com/Konstanty/libmodplug)
    -   uavs3d [![uavs3d](https://flat.badgen.net/github/last-commit/uavs3/uavs3d?scale=0.8&cache=1800)](https://github.com/uavs3/uavs3d)
    -   davs2 [![davs2](https://flat.badgen.net/github/last-commit/pkuvcl/davs2?scale=0.8&cache=1800)](https://github.com/pkuvcl/davs2)
    -   libdovi [![libdovi](https://flat.badgen.net/github/last-commit/quietvoid/dovi_tool/main?scale=0.8&cache=1800)](https://github.com/quietvoid/dovi_tool)
    -   libzvbi  [![libzvbi](https://flat.badgen.net/github/last-commit/zapping-vbi/zvbi/main?scale=0.8&cache=1800)](https://github.com/zapping-vbi/zvbi)
    -   rav1e [![rav1e](https://flat.badgen.net/github/last-commit/xiph/rav1e?scale=0.8&cache=1800)](https://github.com/xiph/rav1e)
    -   rubberband [![rubberband](https://flat.badgen.net/github/last-commit/breakfastquay/rubberband/default?scale=0.8&cache=1800)](https://github.com/breakfastquay/rubberband)
    -   libaribcaption  [![libaribcaption](https://flat.badgen.net/github/last-commit/xqq/libaribcaption?scale=0.8&cache=1800)](https://github.com/xqq/libaribcaption)
    -   zlib [![zlib](https://flat.badgen.net/github/last-commit/zlib-ng/zlib-ng?scale=0.8&cache=1800)](https://github.com/zlib-ng/zlib-ng)
    -   zstd [![zstd](https://flat.badgen.net/github/last-commit/facebook/zstd/dev?scale=0.8&cache=1800)](https://github.com/facebook/zstd)
-   Zip
    -   [xvidcore](https://labs.xvid.com/source/) (1.3.7) 
    -   [lzo](https://fossies.org/linux/misc/) (2.10)
    -   [libopenmpt](https://lib.openmpt.org/libopenmpt/download/) (0.7.3)
    -   [libiconv](https://ftp.gnu.org/pub/gnu/libiconv/) (1.17)
    -   [vapoursynth](https://github.com/vapoursynth/vapoursynth) (R65)  ![](https://img.shields.io/github/v/release/vapoursynth/vapoursynth?style=flat-square)