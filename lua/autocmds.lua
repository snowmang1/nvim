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

	-- Packer auto sync
vim.cmd [[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]]

