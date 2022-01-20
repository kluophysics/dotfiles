#!/bin/bash
 
# basic software
sudo apt update
sudo apt -y upgrade
sudo apt -y install build-essential
sudo apt -y install gcc gfortran g++
sudo apt -y install git git-gui
sudo apt -y install tree

sudo apt -y install vim vim-gtk3
sudo apt -y install cmake
sudo apt -y install zsh
sudo apt -y install autojump


# math libraries
sudo apt -y install liblapack-dev liblapacke-dev libblas-dev libblas64-dev libfftw3-dev libxc-dev 
#sudo apt -y install libtool



# common softwares
# vlc
sudo apt -y install vlc 

# vscode
#curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
#sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg && \
#sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' && \
#sudo apt-get update && \
#sudo apt install code code-insiders

# problems with above one
 
sudo wget -O - https://tagplus5.github.io/vscode-ppa/ubuntu/gpg.key | sudo apt-key add - && \
sudo wget -O /etc/apt/sources.list.d/vscode.list https://tagplus5.github.io/vscode-ppa/ubuntu/vscode.list && \
sudo apt update &&
sudo apt -y install code #code-insiders
# Visual Studio Code Insiders is just a beta version.

# libreoffice suite
sudo apt -y install libreoffice libreoffice-texmaths

# texlive-latex
sudo apt -y install texlive-latex-base texlive-latex-recommended texlive-publishers texlive-luatex texlive-pictures texlive-lang-chinese texlive-fonts-recommended texlive-fonts-extra texlive-bibtex-extra texlive-xetex texlive-pstricks texlive-metapost

# gnuplot 
sudo apt -y install gnuplot-qt
# vncviewer
sudo apt -y install tigervnc-viewer
# gimp
sudo apt -y install gimp
# inkscape
sudo apt -y install inkscape
# 

