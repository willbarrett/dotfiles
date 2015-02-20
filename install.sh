#!/bin/bash

cd bashmarks
make install
cd ..

cd gnome-terminal-colors-solarized
./install.sh
cd ..

[ -e ~/.vim ] && mv ~/.vim ~/.vim.bak
ln -s `readlink -m ./.vim` ~/.vim

[ -e ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.bak
ln -s `readlink -m ./.vimrc` ~/.vimrc

[ -e ~/.bash_aliases ] && mv ~/.bash_aliases ~/.bash_aliases.bak
ln -s `readlink -m ./.bash_aliases` ~/.bash_aliases

[ -e ~/.bash_profile ] && mv ~/.bash_profile ~/.bash_profile.bak
ln -s `readlink -m ./.bash_profile` ~/.bash_profile

[ -e ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.bak
ln -s `readlink -m ./.bashrc` ~/.bashrc

[ -e ~/.gemrc ] && mv ~/.gemrc ~/.gemrc.bak
ln -s `readlink -m ./.gemrc` ~/.gemrc

[ -e ~/.tmux.conf ] && mv ~/.tmux.conf ~/.tmux.conf.bak
ln -s `readlink -m ./.tmux.conf` ~/.tmux.conf

[ -e ~/.jrnl_config ] && mv ~/.jrnl_config ~/.jrnl_config.bak
ln -s `readlink -m ./.jrnl_config` ~/.jrnl_config
