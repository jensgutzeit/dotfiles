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

printf "Creating .bashrc ... "
ln -sf $pwd/bash/.bashrc ~/.bashrc
show_result $?

printf "Creating .bash_profile ... "
ln -sf $pwd/bash/.bash_profile ~/.bash_profile
show_result $?

printf "Creating .xinitrc ... "
ln -sf $pwd/.xinitrc ~/.xinitrc
show_result $?

printf "Creating .gitconfig ... "
ln -sf $pwd/git/.gitconfig ~/.gitconfig
show_result $?

printf "Creating .vimrc ... "
ln -sf $pwd/vim/.vimrc ~/.vimrc
show_result $?

printf "Creating .vim ... "
ln -sf $pwd/vim/.vim ~/.vim
show_result $?

echo "Done"
