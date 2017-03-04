#!/bin/bash

printf "Setting up golang develop enviroment...\n"

# golang安装包
GOLANG_URL="https://storage.googleapis.com/golang/go1.7.5.linux-amd64.tar.gz"
GOLANG_CHECKSUM="2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3"
GOLANG_TARGET="go-linux-amd64.tar.gz"

# FUCK GFW
curl $GOLANG_URL -o $GOLANG_TARGET

CHECKSUM_TEMP=$(sha256sum $GOLANG_TARGET)
echo $CHECKSUM_TEMP | sha256sum -c

if [[ $? != 0 ]]; then
    echo "checksum for $GOLANG_TARGET failed..."
    return
fi

GODIR="/home/vagrant/golang"
GOROOT="$GODIR/go"
GOPATH="$GODIR/gopath"

rm -rf $GODIR
mkdir -p $GOROOT
mkdir -p $GOPATH
tar -C $GODIR -xf $GOLANG_TARGET

echo -e "\n" | sudo tee -a /etc/profile
echo "export GOROOT=$GOROOT" | sudo tee -a /etc/profile
echo "export GOPATH=$GOPATH" | sudo tee -a /etc/profile
echo "export PATH=\$PATH:$GOROOT/bin" | sudo tee -a /etc/profile
echo "export PATH=\$PATH:$GOPATH/bin" | sudo tee -a /etc/profile

export GOROOT=$GOROOT
export GOPATH=$GOPATH
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

# 使用gopm下载包
go get -u github.com/gpmgo/gopm

gopm get -g -u github.com/golang/lint/golint
go install github.com/golang/lint/golint
