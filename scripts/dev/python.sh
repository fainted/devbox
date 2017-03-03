#!/bin/bash

printf "Installing pip..."

# PyPI使用豆瓣源
# 安装virtualenv, shadowsocks, mycli
sudo apt-get -y install python-pip python-dev
mkdir -p ~/.config/pip
# PyPI使用豆瓣源
echo '[global]'                                    > ~/.config/pip/pip.conf
echo 'index-url = https://pypi.douban.com/simple' >> ~/.config/pip/pip.conf
echo 'trusted-host = pypi.douban.com'             >> ~/.config/pip/pip.conf

sudo pip install virtualenv shadowsocks mycli
