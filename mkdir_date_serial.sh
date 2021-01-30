#!/bin/bash

readonly DIR_ROOT="$(cd "`dirname "${0}"`"; pwd)"

for i in `seq 1 999`
do
  DIR_WORK="${DIR_ROOT}"/`date +"%Y%m%d"`_`printf %03d "${i}"`
  if [ ! -e "${DIR_WORK}" ]; then
    break
  else
    # echo exists "${DIR_WORK}"
  fi
done

echo mkdir "${DIR_WORK}"
mkdir "${DIR_WORK}"
if [ $? -ne 0 ]; then
  echo [ERROR] mkdir "${DIR_WORK}"
  echo [ERROR] stop shell.
  exit 1
fi