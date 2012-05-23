#!/usr/bin/env/ sh

VIMRC="ln -s `pwd`/vimrc .vimrc"
VIMDIR="ln -s `pwd`/vim .vim"
ALIASES="ln -s `pwd`/bash_aliases .bash_aliases"
TMUX="ln -s `pwd`/tmux.conf .tmux.conf"
HACKING="ln -s `pwd`/hacking .hacking"
FONTS="ln -s `pwd`/fonts .fonts"

cd

echo "Linking .vimrc"
echo $VIMRC
$VIMRC

echo "Linking .vim"
echo $VIMDIR
$VIMDIR

echo "Linking .bash_aliases"
echo $ALIASES
$ALIASES

echo "Linking .tmux.conf"
echo $TMUX
$TMUX

echo "Linking .hacking"
echo $HACKING
$HACKING

echo "Linking .fonts"
echo $FONTS
$FONTS
