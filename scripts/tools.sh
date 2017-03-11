#!/bin/bash

# 切换至中科大源 https://lug.ustc.edu.cn/wiki/mirrors/help/debian
sudo sed -i 's/httpredir.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sudo apt-get update

# 部分软件安装
sudo apt-get install -yq --no-install-suggests --no-install-recommends \
    zsh \
    git \
    subversion \
    curl \
    wget \
    htop \
    rsync \
    telnet \
    nmap \
    pstack \
    tree \
    gcc \
    g++ \
    gdb \
    make \
    tcpdump \
    autoconf \
    mysql-client \
    redis-tools

# 后续可能需要
# thrift
# protobuf
# lua
# docker-engine

# 安装oh-my-zh 设置zsh为默认shell
echo "vagrant" | sudo -S --user=vagrant sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
