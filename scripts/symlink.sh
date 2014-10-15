#!/bin/bash

#basedir=${dirname $PWD} 
basedir=`dirname $PWD` 

# Vim
mv $HOME/.vim $HOME/.vim_old
ln -s $basedir/resources/vim $HOME/.vim
mv $HOME/.vimrc $HOME/.vimrc_old
ln -s $basedir/resources/vimrc $HOME/.vimrc
mv $HOME/.gvimrc $HOME/.gvimrc_old
ln -s $basedir/resources/gvimrc $HOME/.gvimrc
