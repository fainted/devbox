#!/bin/bash

# 切换至中科大源 https://lug.ustc.edu.cn/wiki/mirrors/help/debian
sudo sed -i 's/httpredir.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sudo apt-get update

# 设置语言环境为zh_CN.UTF-8
echo -e "\n" | sudo tee -a /etc/profile
echo 'LANG=zh_CN.UTF-8' | sudo tee -a /etc/profile
echo 'LANGUAGE=zh_CN.UTF-8' | sudo tee -a /etc/profile

sudo sed -i 's/# zh_CN.UTF-8/zh_CN.UTF-8/g' /etc/locale.gen
sudo locale-gen
sudo locale-gen zh_CN.UTF-8
# need re-login
