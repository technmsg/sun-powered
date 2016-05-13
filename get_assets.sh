#!/bin/bash
#
#   Copyright 2015 Alex Moundalexis
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#

if [ -z "$1" ] ; then
  echo "Usage: $0 <preso>" ; exit 1
fi

DIR=assets

if [ ! -d ${DIR} ] ; then
  mkdir ${DIR}
fi

PRESO=$1

# retrieve the list of requires images
grep SRC "${PRESO}" | sed -e 's/^.*SRC://' -e 's/ -->$//' > ${DIR}/sources.txt

cd ${DIR} || exit

for SRC in $(cat sources.txt) ; do

  A_DIR=${SRC%^*}  # get the part before the carrot
  A_URI=${SRC##*^} # get the part after the carrot

  # skip if either value is empty
  if [ -z "${A_DIR}" -o -z "${A_URI}" ] ; then
    continue
  fi

  # create necessary subdirectories
  if [ ! -d "${A_DIR}" ] ; then
    mkdir "${A_DIR}"
  fi

  # retrieve missing images
  if [ ! -e "${A_DIR}/${A_URI##*/}" ] ; then
    cd "${A_DIR}" || exit
    echo "fetching ${A_URI} > ${A_DIR}"
    curl -# -O "${A_URI}"
    cd - >/dev/null
  fi

done

# EOF
