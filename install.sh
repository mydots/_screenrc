#!/bin/bash

PATH_TO_FILE="$(cd `dirname $0` && pwd)";
export		RED="[0;31m"
export		GREEN="[0;32m"
export		DEFAULT="[0;39m"

# Screen
if which screen >/dev/null; then

	rm -rf ~/.screenrc 
  ln -s ${PATH_TO_FILE}/screenrc ~/.screenrc 

  # Install submodules
  cd ${PATH_TO_FILE} && git submodule init && git submodule update

else
  
  echo "${RED}Attention: ${DEFAULT} Screen not found"

fi

