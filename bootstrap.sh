#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

#git pull origin main;
git pull origin work;

# setup my vimrc separately
git clone https://github.com/kluophysics/vimrc.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -snf ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall


function setup_ssh(){
   # setup multiple ssh keys 
   ssh-keygen -q -t rsa -C "kluo@Thinkpad-T470" -f ~/.ssh/id_rsa -N '' <<<y >/dev/null 2>&1
   ssh-keygen -q -t rsa -C "kluo@njust.edu.cn" -f ~/.ssh/id_rsa_gitee -N '' <<<y >/dev/null 2>&1
   ssh-keygen -q -t rsa -C "kluophysics@gmail.com" -f ~/.ssh/id_rsa_github -N '' <<<y >/dev/null 2>&1
   ssh-keygen -q -t rsa -C "kluophysics@gmail.com" -f ~/.ssh/id_rsa_gitlab -N ''  <<<y >/dev/null 2>&1

   ssh-add ~/.ssh/id_rsa
   ssh-add ~/.ssh/id_rsa_github
   ssh-add ~/.ssh/id_rsa_gitlab
   ssh-add ~/.ssh/id_rsa_gitee
}

#setup_ssh

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		--exclude "brew.sh" \
		--exclude "init" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
