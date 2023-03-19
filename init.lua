-- Evan Drake neovim config

-- lazy lua bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- required files
require('config.autocmds')
require('config.mappings')
require('config.options')
require('config.user_cmd')

 -- load lazy.nvim
require("lazy").setup("plugins")

-- custom filetype command
vim.cmd [[ autocmd BufRead,BufNewFile *.org set filetype=org  ]]

vim.cmd.colorscheme 'catppuccin'
vim.diagnostic.config({ virtual_text = true })
vim.diagnostic.config({ virtual_lines = true })
