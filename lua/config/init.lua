-- this file will bootstrap lua if it does not already exist

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

-- include config files
require('config.autocmds')
require('config.mappings')
require('config.options')
require('config.user_cmd')

 -- load lazy.nvim
require("lazy").setup("plugins")
