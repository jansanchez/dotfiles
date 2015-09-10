#!/usr/bin/env bash

OPT_FOLDER="/opt"
BUNDLE_FOLDER="~/.vim/bundle/"

#sudo apt-get update
#sudo apt-get install vim

#vim --version

echo "[Vim Instalado]"

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
cd ~/.vim/autoload;

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim;


# Install plugins
cd ~/.vim/bundle

# Install vim-commentary
if [ ! -d "vim-commentary" ]; then
    git clone git://github.com/tpope/vim-commentary.git vim-commentary
fi

# Install vim-numbers
if [ ! -d "vim-numbers" ]; then
    git clone https://github.com/myusuf3/numbers.vim.git vim-numbers
fi

# Install vim-easymotion
if [ ! -d "vim-easymotion" ]; then
    git clone git://github.com/Lokaltog/vim-easymotion.git vim-easymotion
fi


# Install vim-delimit-mate
if [ ! -d "vim-delimit-mate" ]; then
    git clone https://github.com/Raimondi/delimitMate.git vim-delimit-mate
fi

# Install vim-surround
if [ ! -d "vim-surround" ]; then
    git clone https://github.com/tpope/vim-surround.git vim-surround
fi

# Install vim-multiple-cursors
if [ ! -d "vim-multiple-cursors" ]; then
    git clone https://github.com/terryma/vim-multiple-cursors.git vim-multiple-cursors
fi



# Install vim-coffee-script
if [ ! -d "vim-coffee-script" ]; then
    git clone https://github.com/kchmck/vim-coffee-script.git vim-coffee-script
fi

# Install vim-jade
if [ ! -d "vim-jade" ]; then
    git clone https://github.com/digitaltoad/vim-jade.git vim-jade
fi

# Install vim-javascript
if [ ! -d "vim-javascript" ]; then
    git clone https://github.com/pangloss/vim-javascript vim-javascript
fi

# Install vim-css
if [ ! -d "vim-css" ]; then
    git clone https://github.com/hail2u/vim-css3-syntax.git vim-css
fi

# Install vim-sylus
if [ ! -d "vim-stylus" ]; then
    git clone https://github.com/wavded/vim-stylus.git vim-stylus
fi


echo "[Vim y sus plugins Instalados]"

