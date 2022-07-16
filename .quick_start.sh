#!/bin/bash

# make sure to do this first it will install packer.nvim for plugin management

if [[ $1 == '-h' || '--help' ]]; then
  echo "to run installation: "
  echo "bash .quick_start.sh mac"
  echo " "
  echo "In the event you do not have a mac"
  echo "this script will not work properly for you currently"
  echo "you will need to manually install nvim-packer and the language servers"
  echo " "
  echo "This script uses git to install nvim-packer"
  echo "if your system does not have git on it you will"
  echo "need to download and install that first"
  exit 0
fi

# path to nvim-packer
PACKER=~/.local/share/nvim/site/pack/packer/start/packer.nvim

if [[ -d $PACKER ]]; then
  echo packer already exists
else
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    $PACKER
   #~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

if [[ $1 == 'mac' ]]; then
	brew install lua-language-server
	brew install bash-language-server
  brew install rust-analyzer
else
  echo "you need to install language servers with your package manager:"
  echo "lua-language-server"
  echo "bash-language-server"
  echo "rust-analyzer"
fi
