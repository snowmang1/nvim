-- this is my nvim lua config file

require('plugins')

-- this setup uses the defaults for tree config
require("nvim-tree").setup()

-- lua line config
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'material',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- options
local o = vim.o		-- global
local wo = vim.wo	-- window local
local bo = vim.bo	-- buffer local

-- window local
wo.number = true
o.cursorline = true

-- keymaps
local map = vim.api.nvim_set_keymap
	-- window nav
map('n', '<c-h>', '<c-w>h', {silent = true, noremap = true}) 
map('n', '<c-j>', '<c-w>j', {silent = true, noremap = true}) 
map('n', '<c-k>', '<c-w>k', {silent = true, noremap = true}) 
map('n', '<c-l>', '<c-w>l', {silent = true, noremap = true}) 
map('t', '<c-h>', '<c-\\><c-n><c-w>h', {silent = true}) 
map('t', '<c-j>', '<c-\\><c-n><c-w>j', {silent = true}) 
map('t', '<c-k>', '<c-\\><c-n><c-w>k', {silent = true}) 
map('t', '<c-l>', '<c-\\><c-n><c-w>l', {silent = true}) 

	-- couple completion
map('i', '(', '()<Left>', {silent = true})
map('i', '[', '[]<Left>', {silent = true})
map('i', '{', '{}<Left>', {silent = true})

	-- terminal mappings
map('t', '<esc>', '<c-\\><c-n>', {silent = true})

	-- custom keymaps
map('n', '<c-n>', ':NvimTreeToggle<CR>', {silent = true, noremap = true})

map('i', '<C-d>', '<esc>yypA', {silent = true})
