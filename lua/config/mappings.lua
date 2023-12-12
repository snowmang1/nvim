	-- helper variables
local map = vim.api.nvim_set_keymap

	-- map leader
vim.g.mapleader = ';'

	-- window nav
local nore_opts = { noremap = true, silent = true }
map('n', '<c-h>', '<c-w>h'						, nore_opts)
map('n', '<c-j>', '<c-w>j'						, nore_opts)
map('n', '<c-k>', '<c-w>k'						, nore_opts)
map('n', '<c-l>', '<c-w>l'						, nore_opts)
map('t', '<c-h>', '<c-\\><c-n><c-w>h'	, {silent = true})
map('t', '<c-j>', '<c-\\><c-n><c-w>j'	, {silent = true})
map('t', '<c-k>', '<c-\\><c-n><c-w>k'	, {silent = true})
map('t', '<c-l>', '<c-\\><c-n><c-w>l'	, {silent = true})

	-- tab nav
map('n', ']b', '<cmd>bn<cr>', nore_opts)
map('n', '[b', '<cmd>bp<cr>', nore_opts)

	-- terminal mappings
map('t', '<esc>', '<c-\\><c-n>', {silent = true})

	-- colors
map('n', '<leader>cm', '<cmd>Catppuccin mocha<cr>', nore_opts)
map('n', '<leader>cl', '<cmd>Catppuccin latte<cr>', nore_opts)
