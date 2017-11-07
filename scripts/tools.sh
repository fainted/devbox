#!/bin/bash

# 切换至中科大源 https://lug.ustc.edu.cn/wiki/mirrors/help/debian
sudo sed -i 's/httpredir.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sudo apt-get update

# 部分软件安装
# 移除mysql-client, 改用pypi模块mycli
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
    ctags \
    tcpdump \
    autoconf \
    redis-tools \
    protobuf-compiler \
    graphviz \
    cloc

# 后续可能需要
# thrift
# lua
# docker-engine

# 安装oh-my-zh 设置zsh为默认shell
echo "vagrant" | sudo -S --user=vagrant sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
