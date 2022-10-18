#!/bin/bash

#(ubuntu18.04 amd64)

# update
apt-get update -y && apt-get upgrade -y

# add repo for python
apt-get -y install software-properties-common && add-apt-repository ppa:deadsnakes/ppa && apt-get update

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
			    curl

# get conkas & run
git clone https://github.com/nveloso/conkas.git
cd ./conkas
pip3 install -r requirements.txt
python3 conkas.py -vt reentrancy -s some_file.sol
