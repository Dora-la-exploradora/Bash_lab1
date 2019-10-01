#!/bin/sh

apt-get update && apt-get install -y --no-install-recommends git wget ca-certificates
wget https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.13.1.linux-amd64.tar.gz

export PATH=/usr/local/go/bin:$PATH

mkdir project
cd project

git clone https://github.com/yggdrasil-network/yggdrasil-go.git

cd yggdrasil-go

./build
