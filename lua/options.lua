-- options
local o = vim.o				-- global
local wo = vim.wo			-- window local
-- local bo = vim.bo	-- buffer local
local cmd = vim.cmd

-- window local
wo.number = true
o.cursorline = false
o.signcolumn = 'number'
cmd('set mouse= ') -- disables mouse control
vim.opt.termguicolors = true
