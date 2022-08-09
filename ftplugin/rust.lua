
require'lspconfig'.rust_analyzer.setup {
	autostart = true,
}

vim.cmd [[ :LspStart ]]	-- This autostarts the lang server
vim.cmd [[ :compiler cargo ]]

	-- quickfix
	-- mappings
local map = vim.api.nvim_set_keymap
local nore_opts = { noremap = true, silent = true }

map('n', '<leader>f', ':RustFmt<CR>', nore_opts)
