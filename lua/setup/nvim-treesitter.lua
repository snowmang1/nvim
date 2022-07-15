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
