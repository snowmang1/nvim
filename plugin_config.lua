-- file for setting up plugins

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
