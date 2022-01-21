#!/bin/bash

sudo apt -y install fcitx

sudo cp /usr/share/applications/fcitx.desktop /etc/xdg/autostart/
sudo apt -y purge ibus

sudo apt -y install ./sogoupinyin_2.3.1.0112_amd64.deb 


sudo apt -y install libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2
sudo apt -y install libgsettings-qt1
sudo apt install -f

