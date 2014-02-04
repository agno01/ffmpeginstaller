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

# Package, source, destination, cpus
_package='lame-3.99.5'
_type='tar.gz'
SURL='http://downloads.sourceforge.net/project/lame/lame/3.99'
SDIR='/usr/src/ffmpeg_sources'
DDIR='/usr/local/ffmpeg_build'
CPUS=$(grep -c processor /proc/cpuinfo)

clear
sleep 2

echo -e "${RED} Installation of ....... ${_package} ....... started ${RESET}"
sleep 2

cd ${SDIR}
echo -e "${RED} Removing old sources ${RESET}"
    rm -vrf ${SDIR}/${_package}*
    curl -L -O ${SURL}/${_package}.${_type}
    tar xzvf ${_package}.${_type}
    cd ${_package}
    ./configure --prefix=${DDIR} --disable-shared --enable-nasm
    make -j${CPUS} && make install
    make distclean

echo -e "${GREEN} Installation of ....... ${_package} ....... completed ${RESET}"
sleep 2

