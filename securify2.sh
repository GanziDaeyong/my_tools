#!/bin/bash

#(ubuntu18.04 amd64)

# update
apt-get update -y && apt-get upgrade -y

# add repo for python
apt-get -y install software-properties-common locales && add-apt-repository ppa:deadsnakes/ppa && apt-get update

# get python3.8 and dependencies
apt-get -y install python3.8 \
                       python3.8-venv \
                       python3.8-dev \
                       python3.8-distutils \
                       python3.8-lib2to3 \
                       python3.8-gdbm \
                       python3.8-tk

# get other programs
apt-get -y install git \
			    curl \
                             wget \
                             gdebi

curl -L https://github.com/ethereum/solidity/releases/download/v0.5.12/solc-static-linux > /usr/bin/solc-0.5.12
chmod +x /usr/bin/solc-0.5.12
ln -s /usr/bin/solc-0.5.12 /usr/local/bin/solc

wget https://github.com/souffle-lang/souffle/releases/download/1.6.2/souffle_1.6.2-1_amd64.deb -O /tmp/souffle.deb
gdebi --n /tmp/souffle.deb

apt-get -y install graphviz python3.7 python3.7-venv python3-pip curl

git clone https://github.com/eth-sri/securify2.git

cd ./securify2
pip3 install --upgrade pip
pip3 install -r requirements.txt
pip3 install -e .

export LD_LIBRARY_PATH=/home/securify2/securify/staticanalysis/libfunctors

securify ./securify/staticanalysis/testContract.sol

