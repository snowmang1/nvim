
local bo = vim.bo

bo.expandtab = false
bo.tabstop = 2
bo.shiftwidth = 2

	-- helpers
local map = vim.api.nvim_set_keymap
local nore_opts = { noremap = true, silent = true }

map('i', '(*' , '(**)<left><left>' , nore_opts)
map('i', '(*<cr>' , '(*<cr><space>*<cr>*)<up>' , nore_opts)
map('i', '*<cr>' , '<cr><space>*' , nore_opts)
