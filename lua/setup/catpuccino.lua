
require("catppuccin").setup({
	transparent_background = false,
	term_colors = false,
	compile = {
		enabled = true,
		path = vim.fn.stdpath "cache" .. "/catppuccin",
	},
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		gitsigns = true,
		hop = true,
		nvimtree = {
			enabled = true,
			show_root = true,
			transparent_panel = true,
		},
		treesitter_context = true,
		treesitter = true,
		ts_rainbow = true,
		telescope = true,
		lsp_trouble = true,
		fidget = true,
		neogit = true
	},
	color_overrides = {},
	highlight_overrides = {},
})
