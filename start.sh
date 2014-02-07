#!/bin/bash
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#

# Colors
RED='\033[01;31m'
GREEN='\033[01;32m'
RESET='\033[0m'

SDIR='/usr/src/ffmpeg_sources'

# Install prerequisites
yum install autoconf automake gcc gcc-c++ git libtool make nasm pkgconfig yasm zlib-devel

# Create directory for sources
mkdir -p ${SDIR}

# x264
sh x264.sh
# fdk_aac
sh fdk-aac.sh
# lame
sh lame.sh
# opus
sh opus.sh
# libogg
sh libogg.sh
# libvorbis
sh libvorbis.sh
# libtheora
sh libtheora.sh
# libvpx
sh libvpx.sh
# ffmpeg
sh ffmpeg.sh
# gpac (mp4box)
sh gpac.sh

