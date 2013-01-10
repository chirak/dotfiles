#!/usr/bin/env/ sh

VIMRC="ln -s `pwd`/vimrc .vimrc"
GVIMRC="ln -s `pwd`/gvimrc .gvimrc"
VIMDIR="ln -s `pwd`/vim .vim"
TMUX="ln -s `pwd`/tmux.conf .tmux.conf"

cd

echo "Linking .vimrc"
echo $VIMRC
$VIMRC

echo "Linking .gvimrc"
echo $GVIMRC
$GVIMRC

echo "Linking .vim"
echo $VIMDIR
$VIMDIR

echo "Linking .tmux.conf"
echo $TMUX
$TMUX
