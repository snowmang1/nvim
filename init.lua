-- Evan Drake neovim config

-- required files
require('plugins')
require('autocmds')
require('mappings')
require('options')

-- custom filetype command
vim.cmd [[ autocmd BufRead,BufNewFile *.org set filetype=org ]]
