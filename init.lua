-- this is my nvim lua config file

require('plugins')

-- this setup uses the defaults for tree config
require("nvim-tree").setup()

-- lua line config
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
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
    lualine_x = {'encoding', 'fileformat', 'filetype'},
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
map('n', '<c-h>', ':wincmd h<cr>', {silent = true, noremap = true}) 
map('n', '<c-j>', ':wincmd j<cr>', {silent = true, noremap = true}) 
map('n', '<c-k>', ':wincmd k<cr>', {silent = true, noremap = true}) 
map('n', '<c-l>', ':wincmd l<cr>', {silent = true, noremap = true}) 

	-- couple completion
map('i', '(', '()<Left>', {silent = true})
map('i', '[', '[]<Left>', {silent = true})
map('i', '{', '{}<Left>', {silent = true})

map('i', '<C-d>', '<esc>yypA', {silent = true})
