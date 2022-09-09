-- Evan Drake neovim config

-- required files
require('plugins')
require('autocmds')
require('mappings')
require('options')

-- custom filetype command
vim.cmd [[ autocmd BufRead,BufNewFile *.org set filetype=org  ]]

vim.g.catppuccin_flavour = 'mocha'

vim.cmd.colorscheme "catppuccin"
vim.diagnostic.config({ virtual_text = false })
vim.diagnostic.config({ virtual_lines = true })
