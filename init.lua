-- Evan Drake neovim config

-- required files
require('plugins')
require('autocmds')
require('mappings')
require('options')
require('user_cmd')

-- custom filetype command
vim.cmd [[ autocmd BufRead,BufNewFile *.org set filetype=org  ]]

vim.cmd.colorscheme 'catppuccin'
vim.diagnostic.config({ virtual_text = true })
vim.diagnostic.config({ virtual_lines = true })
