local bo = vim.bo

bo.expandtab = true
bo.tabstop = 2
bo.shiftwidth = 2

require'lspconfig'.bashls.setup {
	autostart = true,
}

vim.cmd [[ :LspStart ]]
