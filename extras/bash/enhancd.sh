#!/usr/bin/env bash

cd /opt;

# pypa 
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python;

# percol
if [ ! -d "percol" ]; then
sudo git clone git://github.com/mooz/percol.git;
sudo python setup.py install;
fi

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf;
~/.fzf/install;

cd /opt;

# go 1.5.1
if [ ! -d "/usr/local/go" ]; then
sudo wget -v https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz;
sudo tar -C /usr/local -xzf go1.5.1.linux-amd64.tar.gz;
cd ~;
mkdir -p go;
export GOPATH="$HOME/go";
fi

# gof
go get github.com/mattn/gof

# peco
go get github.com/peco/peco/cmd/peco

curl -L git.io/enhancd | sh

ENHANCED_FILTER=percol:peco:zfz

export ENHANCD_FILTER

echo "ENHANCED_FILTER=percol:peco:zfz"
echo "export ENHANCED_FILTER"
