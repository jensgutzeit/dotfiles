#!/bin/bash

# Text color variables
txtred=$(tput setaf 1)
txtgrn=$(tput setaf 2)
txtwht=$(tput setaf 7)
txtbld=$(tput bold)
txtrst=$(tput sgr0)
OK="${txtbld}${txtwht}[${txtgrn}OK${txtwht}]${txtrst}"
FAIL="${txtbld}${txtwht}[${txtred}FAIL${txtwht}]${txtrst}"

pwd=`pwd`

echo "Using source directory '$pwd' ... "

printf "Creating .gitconfig ... "
ln -sf $pwd/git/.gitconfig ~/.gitconfig
if [ $? -eq 0 ]; then
   echo $OK
else
   echo $FAIL
fi

echo "Done"
