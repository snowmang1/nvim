-- this is my nvim lua config file

require('plugins')

-- nvim tree setup
require'nvim-tree'.setup {}

-- hop setup
require'hop'.setup()

-- nvim treesitter config
require'nvim-treesitter.configs'.setup {
	-- a list of languages to include parsers for
	ensure_installed = {'c', 'lua', 'rust', 'bash', 'dockerfile', 'hcl', 'help', 'latex'},

	-- Install parser synchronously
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	auto_install = true,

	-- list parsers to ignore installing
	ignore_install = {},

	highlight = {
		-- disable extension
		enable = true,

		-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
		disable = {},

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	}
}

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

-- custom filetype command
vim.cmd [[ autocmd BufRead,BufNewFile *.org set filetype=org ]]

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
	local nore_opts = { noremap = true, silent = true }
map('n', '<c-h>', '<c-w>h', nore_opts)
map('n', '<c-j>', '<c-w>j', nore_opts)
map('n', '<c-k>', '<c-w>k', nore_opts)
map('n', '<c-l>', '<c-w>l', nore_opts)
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
map('n', '<c-n>', ':NvimTreeToggle<CR>', nore_opts)
map('i', '<C-d>', '<esc>yypA', {silent = true})
map('n', '<C-p>', ':HopWord<CR>', nore_opts)
