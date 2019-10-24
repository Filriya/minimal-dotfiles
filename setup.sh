#!/bin/sh
#
cd $(dirname $0)

#dotfile関連設定
for dotfile in .?*
do
  if [ $dotfile != '..' ] && [ $dotfile != '.git' ] && [ $dotfile != '.gitignore' ]
  then
    ln -nfs "$PWD/$dotfile" $HOME
  fi
done
