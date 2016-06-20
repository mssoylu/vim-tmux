#!/bin/bash

#
# Dotfiles
# Author : Mehmet Soylu
# OS : Ubuntu 14.04
# 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# need for rbenv
sudo apt-get update 
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
source ~/.zshrc



# add font

sudo cp -rf ../Inconsolata-dz.otf /usr/share/fonts/truetype/Inconsolata-dz.otf

# add config dotfiles for tmux and git

cp -fr .gitconfig ~
cp -fr .tmux.conf  ~
cp -fr .bashrc ~
cp -fr .gitignore ~

# VIM plugins

mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cp -rf .vimrc ~/
cp -rf .vim ~/ 

sudo rm -R ~/.vim/bundle
mkdir ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab
git clone https://github.com/Lokaltog/vim-easymotion ~/.vim/bundle/vim-easymotion
git clone https://github.com/thoughtbot/vim-rspec ~/.vim/bundle/vim-rspec 

