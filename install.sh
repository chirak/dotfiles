#!/usr/bin/env/ sh

VIMRC="ln -s `pwd`/vimrc .vimrc"
GVIMRC="ln -s `pwd`/gvimrc .gvimrc"
TMUX="ln -s `pwd`/tmux.conf .tmux.conf"

cd

echo "Linking .vimrc"
echo $VIMRC
$VIMRC

echo "Linking .gvimrc"
echo $GVIMRC
$GVIMRC

echo "Linking .tmux.conf"
echo $TMUX
$TMUX
