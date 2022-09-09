-- change to forth

vim.cmd [[
	augroup FsChange
		autocmd!
		autocmd BufEnter * set filetype=forth
	augroup end
]]
