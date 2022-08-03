
require'lspconfig'.rust_analyzer.setup {
	autostart = true,
}

vim.cmd [[ :LspStart ]]	-- This autostarts the lang server
