# **devbox**
**基于Vagrant的开发工具箱**

## 1 **安装与使用**
### 1.1 **依赖**
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [Virtualbox](https://www.virtualbox.org/wiki/Downloads)

### 1.2 **初始化虚拟机**
```shell
git clone https://github.com/fainted/devbox && cd devbox

# 编辑Vagrantfile进行自定义配置
# ...
# 启动虚拟机
vagrant up
```

### 1.3 **登录虚拟机**
```shell
vagrant ssh
```


## 2 **特性**
### 2.1 **系统**
基础镜像[debian/jessie64](https://atlas.hashicorp.com/debian/boxes/jessie64)

使用中科大提供的[apt-get源](https://lug.ustc.edu.cn/wiki/mirrors/help/debian)

### 2.2 **基础软件安装**
初始化虚拟机将安装
- zsh
    - oh-my-zsh
- git
- subversion
- curl
- wget
- htop
- rsync
- telnet
- nmap
- pstack
- tree
- gcc
- g++
- gdb
- make
- tcpdump
- autoconf
- mysql-client
- redis-tools

### 2.3 **开发环境搭建**
默认情况下当前目录会同步至虚拟机的/vagrant目录

在虚拟机中运行/vagrant/scripts/dev目录下的脚本安装开发工具
- [Golang](./scripts/dev/golang.sh)(要翻墙)
- [Python](./scripts/dev/python.sh)
