#!/bin/bash

# make sure to do this first it will install packer.nvim for plugin management

PACKER=~/.local/share/nvim/site/pack/packer/start/packer.nvim

if [[ -d $PACKER ]]; then
  echo packer already exists
else
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
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
