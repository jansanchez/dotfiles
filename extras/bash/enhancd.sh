#!/usr/bin/env bash

cd /opt

# pypa 
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python

# percol
sudo git clone git://github.com/mooz/percol.git
sudo python setup.py install

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

cd /opt

# go 1.5.1
wget -v https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz

cd ~

mkdir -p go

export GOPATH="$HOME/go"


# gof
go get github.com/mattn/gof

# peco
go get github.com/peco/peco/cmd/peco

ENHANCED_FILTER=percol:peco:zfz


