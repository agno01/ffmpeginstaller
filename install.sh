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

_VERSION='7.5'
LPID=$$
LOGFILE="/var/log/ffmpeginstaller-${_VERSION}-${LPID}.log"
clear

echo -e "${GREEN}*************************************************************${RESET}"
echo -e "          FFmpeg  Installation Wizard  Version ${GREEN} ${_VERSION} ${RESET}"
echo -e "${GREEN}*************************************************************${RESET}"
echo -e "\n"
if [ ${USER} == "root" ]
then
    touch ${LOGFILE}
    echo -e "All operations are logged to ${RED}${LOGFILE}${RESET}. \nCheck the logs in case of any failure"
    echo -e "\n"
    echo -e "If you need to cancel the installation press Ctrl+C, otherwise the installation will start within 10 seconds.........."
    sleep 10
    bash start.sh | tee ${LOGFILE}
else
    echo -e "             Sorry, but you need to become a root user."
    echo -e "\n"
fi

