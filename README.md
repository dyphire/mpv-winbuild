# mpv-build

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/dyphire/mpv-winbuild/MPV_OWN)](https://github.com/dyphire/mpv-winbuild/actions)
[![releases](https://img.shields.io/github/v/release/dyphire/mpv-winbuild)](https://github.com/dyphire/mpv-winbuild/releases)
[![downloads](https://img.shields.io/github/downloads/dyphire/mpv-winbuild/total)](https://github.com/dyphire/mpv-winbuild/releases)

Forked from [zhongfly/mpv-winbuild](https://github.com/zhongfly/mpv-winbuild)

Use Github Action to build mpv-win with latest commit.

  - **MPV** Based on https://github.com/shinchiro/mpv-winbuild-cmake. [![mpv-winbuild-cmake](https://flat.badgen.net/github/last-commit/shinchiro/mpv-winbuild-cmake?scale=0.8&cache=1800)](https://github.com/shinchiro/mpv-winbuild-cmake)

  - **MPV_OWN** Based on https://github.com/dyphire/mpv-winbuild-cmake. [![mpv-winbuild-cmake](https://flat.badgen.net/github/last-commit/dyphire/mpv-winbuild-cmake?scale=0.8&cache=1800)](https://github.com/dyphire/mpv-winbuild-cmake) 
     - **Test**: Build with libass from [dyphire/libass_dev](https://github.com/dyphire/libass/tree/dev)
       - Ass: it can fix some problems for scaled with PlayResX
       - Font: Partial unicode name support for Windows
     - **Remember**: This is not perfect

## Auto-Builds

Builds run at 08:00 UTC on Thu and Sun (or GitHubs idea of that time) and are automatically released on success.

This repo only provides 64-bit version. If you need a 32-bit version, you can fork this repo and edit mpv.yml.

> `mpv-dev-x86_64-xxxx.7z` is 64-bit libmpv version, including the `mpv-2.dll` file.
> 
> Some media players based on libmpv will need `mpv-2.dll`.You can upgrade their built-in libmpv version by overwriting mpv-2.dll.

### Release Retention Policy
- The last build of each month is kept for one years.
- The last 14 weekly builds are kept.

## Information about packages

Same as [shinchiro](https://github.com/shinchiro/mpv-winbuild-cmake/blob/master/README.md#information-about-packages)

-   Git/Hg
    -   mpv [![mpv](https://flat.badgen.net/github/last-commit/mpv-player/mpv?scale=0.8&cache=1800)](https://github.com/mpv-player/mpv)
    -   FFmpeg [![FFmpeg](https://flat.badgen.net/github/last-commit/FFmpeg/FFmpeg?scale=0.8&cache=1800)](https://github.com/FFmpeg/FFmpeg)
    -   libass [![libass](https://flat.badgen.net/github/last-commit/libass/libass?scale=0.8&cache=1800)](https://github.com/libass/libass)
    -   libplacebo (with [libepoxy](https://github.com/anholt/libepoxy.git)) [![libplacebo](https://flat.badgen.net/github/last-commit/haasn/libplacebo?scale=0.8&cache=1800)](https://github.com/haasn/libplacebo)
    -   vulkan [![Vulkan-Loader](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Loader?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Loader) [![Vulkan-Headers](https://flat.badgen.net/github/last-commit/KhronosGroup/Vulkan-Headers/main?scale=0.8&cache=1800)](https://github.com/KhronosGroup/Vulkan-Headers)
    -   ANGLE [![ANGLE](https://flat.badgen.net/gitlab/last-commit/shinchiro/angle?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/angle)
    -   xz [![xz](https://flat.badgen.net/gitlab/last-commit/shinchiro/xz?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/xz)
	-   x264 [![x264](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/x264?scale=0.8&cache=1800)](https://code.videolan.org/videolan/x264)
    -   x265 (multilib) [![x265](https://flat.badgen.net/https/bitbucket-ft1l4pi7n5hp.runkit.sh/multicoreware/x265_git?scale=0.8&cache=1800)](https://bitbucket.org/multicoreware/x265_git)
    -   uchardet [![uchardet](https://flat.badgen.net/github/last-commit/freedesktop/uchardet?scale=0.8&cache=1800)](https://github.com/freedesktop/uchardet)
    -   rubberband [![rubberband](https://flat.badgen.net/github/last-commit/lachs0r/rubberband?scale=0.8&cache=1800)](https://github.com/lachs0r/rubberband)
    -   opus [![opus](https://flat.badgen.net/github/last-commit/xiph/opus?scale=0.8&cache=1800)](https://github.com/xiph/opus)
    -   openal-soft [![openal-soft](https://flat.badgen.net/github/last-commit/kcat/openal-soft?scale=0.8&cache=1800)](https://github.com/kcat/openal-soft)
    -   luajit [![luajit](https://flat.badgen.net/github/last-commit/LuaJIT/LuaJIT?scale=0.8&cache=1800)](https://github.com/LuaJIT/LuaJIT)
    -   libvpx [![libvpx](https://flat.badgen.net/github/last-commit/webmproject/libvpx?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libvpx)
    -   libwebp [![libwebp](https://flat.badgen.net/github/last-commit/webmproject/libwebp?scale=0.8&cache=1800)](https://chromium.googlesource.com/webm/libwebp)
    -   libpng [![libpng](https://flat.badgen.net/github/last-commit/glennrp/libpng?scale=0.8&cache=1800)](https://github.com/glennrp/libpng)
    -   libsoxr [![libsoxr](https://flat.badgen.net/gitlab/last-commit/shinchiro/soxr?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/soxr)
    -   libzimg [![libzimg](https://flat.badgen.net/github/last-commit/sekrit-twc/zimg?scale=0.8&cache=1800)](https://github.com/sekrit-twc/zimg)
    -  libdvdread [![libdvdread](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/libdvdread?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdread)
    -   libdvdnav [![libdvdnav](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/libdvdnav?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdnav)
    -   libdvdcss [![libdvdcss](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/libdvdcss?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libdvdcss)
    -   libbluray [![libbluray](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/libbluray?scale=0.8&cache=1800)](https://code.videolan.org/videolan/libbluray)
    -   libmysofa [![libmysofa](https://flat.badgen.net/github/last-commit/hoene/libmysofa?scale=0.8&cache=1800)](https://github.com/hoene/libmysofa)
    -   lcms2 [![lcms2](https://flat.badgen.net/github/last-commit/mm2/Little-CMS?scale=0.8&cache=1800)](https://github.com/mm2/Little-CMS)
    -   lame [![lame](https://flat.badgen.net/gitlab/last-commit/shinchiro//lame?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/lame)
    -   harfbuzz [![harfbuzz](https://flat.badgen.net/github/last-commit/harfbuzz/harfbuzz/main?scale=0.8&cache=1800)](https://github.com/harfbuzz/harfbuzz)
    -   game-music-emu [![game-music-emu](https://flat.badgen.net/https/bitbucket-ft1l4pi7n5hp.runkit.sh/mpyne/game-music-emu?scale=0.8&cache=1800)](https://bitbucket.org/mpyne/game-music-emu)
    -   freetype2 [![freetype2](https://flat.badgen.net/gitlab/last-commit/shinchiro/freetype2?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/freetype2)
    -   flac [![flac](https://flat.badgen.net/github/last-commit/xiph/flac?scale=0.8&cache=1800)](https://github.com/xiph/flac)
    -   opus-tools [![opus-tools](https://flat.badgen.net/github/last-commit/xiph/opus-tools?scale=0.8&cache=1800)](https://github.com/xiph/opus-tools)
    -   mujs [![mujs](https://flat.badgen.net/github/last-commit/ccxvii/mujs?scale=0.8&cache=1800)](https://github.com/ccxvii/mujs)
    -   libarchive [![libarchive](https://flat.badgen.net/github/last-commit/libarchive/libarchive?scale=0.8&cache=1800)](https://github.com/libarchive/libarchive)
    -   libjpeg [![libjpeg](https://flat.badgen.net/github/last-commit/libjpeg-turbo/libjpeg-turbo/main?scale=0.8&cache=1800)](https://github.com/libjpeg-turbo/libjpeg-turbo)
    -   shaderc (with [spirv-headers](https://github.com/KhronosGroup/SPIRV-Headers), [spirv-tools](https://github.com/KhronosGroup/SPIRV-Tools), [glslang](https://github.com/KhronosGroup/glslang)) [![shaderc](https://flat.badgen.net/github/last-commit/google/shaderc/main?scale=0.8&cache=1800)]
    -   spirv-cross [![spirv-cross](https://flat.badgen.net/github/last-commit/KhronosGroup/SPIRV-Cross?scale=0.8&cache=1800)](https://github.com/KhronosGroup/SPIRV-Cross)
    -   fribidi [![fribidi](https://flat.badgen.net/github/last-commit/fribidi/fribidi?scale=0.8&cache=1800)](https://github.com/fribidi/fribidi)
    -   nettle [![nettle](https://flat.badgen.net/gitlab/last-commit/shinchiro/nettle?scale=0.8&cache=1800)](https://gitlab.com/shinchiro/nettle)
    -   curl [![curl](https://flat.badgen.net/github/last-commit/curl/curl?scale=0.8&cache=1800)](https://github.com/curl/curl)
    -   libxml2 [![libxml2](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/gitlab.gnome.org/GNOME/libxml2?scale=0.8&cache=1800)](https://gitlab.gnome.org/GNOME/libxml2)
    -   amf-headers [![amf-headers](https://flat.badgen.net/github/last-commit/GPUOpen-LibrariesAndSDKs/AMF?scale=0.8&cache=1800)](https://github.com/GPUOpen-LibrariesAndSDKs/AMF/tree/master/amf/public/include)
    -   avisynth-headers [![avisynth-headers](https://flat.badgen.net/github/last-commit/AviSynth/AviSynthPlus?scale=0.8&cache=1800)](https://github.com/AviSynth/AviSynthPlus)
    -   nvcodec-headers [![nvcodec-headers](https://flat.badgen.net/github/last-commit/FFmpeg/nv-codec-headers?scale=0.8&cache=1800)](https://git.videolan.org/?p=ffmpeg/nv-codec-headers.git)
    -   libmfx [![libmfx](https://flat.badgen.net/github/last-commit/lu-zero/mfx_dispatch?scale=0.8&cache=1800)](https://github.com/lu-zero/mfx_dispatch)
    -   megasdk (with termcap, readline, cryptopp, sqlite, libuv, libsodium) [![megasdk](https://flat.badgen.net/github/last-commit/meganz/sdk?scale=0.8&cache=1800)](https://github.com/meganz/sdk)
    -   [aom](https://aomedia.googlesource.com/aom/)
    -   dav1d [![dav1d](https://flat.badgen.net/https/gitlab-latest-commit-rphv1x3zj2pi.runkit.sh/code.videolan.org/videolan/dav1d?scale=0.8&cache=1800)](https://code.videolan.org/videolan/dav1d/)
    -   fontconfig [![uchardet](https://flat.badgen.net/github/last-commit/freedesktop/fontconfig?scale=0.8&cache=1800)](https://github.com/freedesktop/fontconfig)
    -   libbs2b [![libbs2b](https://flat.badgen.net/github/last-commit/alexmarsev/libbs2b?scale=0.8&cache=1800)](https://github.com/alexmarsev/libbs2b)
    -   [libssh](https://git.libssh.org/projects/libssh.git)
    -   libsrt [![libsrt](https://flat.badgen.net/github/last-commit/Haivision/srt?scale=0.8&cache=1800)](https://github.com/Haivision/srt)

-   Zip
    -   [expat](https://github.com/libexpat/libexpat) (2.4.7)
    -   [bzip](https://sourceware.org/pub/bzip2/) (1.0.8)
    -   [zlib](https://sourceforge.net/projects/libpng/files/zlib/) (1.2.11)
    -   [xvidcore](https://labs.xvid.com/source/) (1.3.7)
    -   [vorbis](https://xiph.org/downloads/) (1.3.7)
    -   [speex](https://ftp.osuosl.org/pub/xiph/releases/speex/) (1.2.0)
    -   [ogg](https://ftp.osuosl.org/pub/xiph/releases/ogg/) (1.3.5)
    -   [lzo](https://fossies.org/linux/misc/) (2.10)
    -   [libmodplug](https://sourceforge.net/projects/modplug-xmms/files/libmodplug/) (0.8.9.0)
    -   [libopenmpt](https://lib.openmpt.org/libopenmpt/download/) (0.5.10)
    -   [libiconv](https://ftp.gnu.org/pub/gnu/libiconv/) (1.16)
    -   [gmp](https://gmplib.org/download/gmp/) (6.2.1)
    -   [vapoursynth](https://github.com/vapoursynth/vapoursynth) (R57)
    -   [libsdl2](https://www.libsdl.org/release/) (2.0.16)
    -   [libressl](https://cdn.openbsd.org/pub/OpenBSD/LibreSSL/) (3.1.5)
