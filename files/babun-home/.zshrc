#!/usr/bin/env zsh

export WINDOWS_HOME="/c/Users/jessesanford"
export DOTFILES_HOME="/c/Users/jessesanford/.dot-files/files"

file=$DOTFILES_HOME/windows/.zshrc

if [ -f "$file" ]
then
  . $file
else
  echo "Cannot source file: $file"
fi
