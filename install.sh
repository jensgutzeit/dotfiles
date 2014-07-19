#!/bin/bash

# Text color variables
txtred=$(tput setaf 1)
txtgrn=$(tput setaf 2)
txtwht=$(tput setaf 7)
txtbld=$(tput bold)
txtrst=$(tput sgr0)
OK="${txtbld}${txtwht}[${txtgrn}OK${txtwht}]${txtrst}"
FAIL="${txtbld}${txtwht}[${txtred}FAIL${txtwht}]${txtrst}"

function show_result {
   if [ $1 -eq 0 ]; then
      echo $OK
   else
      echo $FAIL
   fi
}

pwd=`pwd`

echo "Using source directory '$pwd' ... "

printf "Creating .gitconfig ... "
ln -sf $pwd/git/.gitconfig ~/.gitconfig
show_result $?

printf "Creating .vimrc ... "
ln -sf $pwd/vim/.vimrc ~/.vimrc
show_result $?

printf "Creating .vim ... "
ln -sf $pwd/vim/.vim ~/.vim
show_result $?

printf "Creating .config/awesome ... "
ln -sf $pwd/awesome ~/.config/awesome
show_result $?

echo "Done"
