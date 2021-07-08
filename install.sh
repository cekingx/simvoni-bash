#!/bin/bash

apt update -y
apt upgrade -y

apt install unzip -y
mkdir openethereum
cd openethereum
wget https://github.com/openethereum/openethereum/releases/download/v3.2.6/openethereum-linux-v3.2.6.zip
unzip openethereum-linux-v3.2.6.zip

chmod +x ethkey ethstore openethereum openethereum-evm
export PATH="$HOME/openethereum:$PATH"
source ~/.bashrc