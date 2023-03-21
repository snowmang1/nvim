-- terminal config
function TerminalSettings()
	local wo = vim.wo	-- window local
	wo.number = false
	wo.cursorline = false
end

vim.cmd [[
	" initiate autocmd in vim scipt
	augroup TerminalSettings 
		autocmd!
		autocmd TermOpen * TerminalSettings()
	augroup end
]]

	-- create autocmd group TerminalSettings
local termGrp = vim.api.nvim_create_augroup("TerminalSettings", {clear = true})
	-- create autocmd for TermOpen
vim.api.nvim_create_autocmd("TermOpen", {
	command = "silent! lua TerminalSettings()",
	group = termGrp,
})

-- change to llvm
vim.api.nvim_create_autocmd({'BufEnter'}, {
	pattern = {'*.ll'},
	command = "set filetype=llvm"
})
