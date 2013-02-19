#!/bin/bash

set -x verbose

git_cfg=~/configuration

cp ~/.vimrc $git_cfg/vim/
cp -r ~/.vim $git_cfg/vim/

cp ~/.zshrc $git_cfg/terminal/zsh/

cp -r ~/.config/mc $git_cfg/

echo 'synced :)'
