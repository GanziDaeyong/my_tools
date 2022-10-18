#!/bin/bash

yum install -y epel-release wget
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install 16.18.0
npm install @smartdec/smartcheck -g
