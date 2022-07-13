!#/bin/bash

# make sure to do this first it will install packer.nvim for plugin management

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

if [[ $1 == 'mac' ]]; then
	brew install lua-language-server
	brew install bash-language-server
fi
