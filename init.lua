-- Evan Drake neovim config

-- required files
require('plugins')
require('autocmds')
require('mappings')
require('options')

-- custom filetype command
vim.cmd [[ autocmd BufRead,BufNewFile *.org set filetype=org ]]

vim.cmd.colorscheme "oxocarbon"
vim.diagnostic.config({ virtual_text = false })
vim.diagnostic.config({ virtual_lines = { only_current_line = true } })
vim.keymap.set("", "<Leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
