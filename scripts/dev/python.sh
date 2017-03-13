#!/bin/bash

printf "Installing pip..."
sudo apt-get -y install python-pip python-dev

sudo pip install -i https://pypi.douban.com/simple --upgrade pip

# pip setting
PIP_CONFIG_DIR="/home/vagrant/.config/pip"
mkdir -p $PIP_CONFIG_DIR
rm --force $PIP_CONFIG_DIR/pip.conf
tee -a $PIP_CONFIG_DIR/pip.conf <<EOF
[global]
# 使用豆瓣源加速
index-url = https://pypi.douban.com/simple
trusted-host = pypi.douban.com
EOF

# 同步pip配置
sudo mkdir -p /root/.config/pip
sudo rm --force /root/.config/pip/pip.conf
sudo cp $PIP_CONFIG_DIR/pip.conf /root/.config/pip/pip.conf

# 安装模块
# virtualenv
# shadowsocks
# mycli
# icdiff
sudo pip install virtualenv shadowsocks mycli icdiff

# TODO setup pip auto completion
