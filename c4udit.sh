#!/bin/bash
yum install -y wget git

# install golang==1.17.2
wget https://go.dev/dl/go1.17.2.linux-amd64.tar.gz ~/
tar -xzf go1.17.2.linux-amd64.tar.gz
export path=$path:/home/go/bin

# install c4udit
git clone https://github.com/byterocket/c4udit.git
cd ./c4udit
go build .
