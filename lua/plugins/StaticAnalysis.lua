return {
	{
		'neovim/nvim-lspconfig',
		version = false,
		events = { "BufReadPre", "BufNewFile" },
		dependancies = {
			'williamboman/mason-lspconfig.nvim',
			'williamboman/mason.nvim',
		},
		config = function ()
			local navic = require("nvim-navic")
			-- custom on_attach to utilize navic
			require'lspconfig'.lua_ls.setup{
				on_attach = function(client, bufnr)
					navic.attach(client, bufnr)
				end
			}
			require'lspconfig'.clangd.setup{
				on_attach = function(client, bufnr)
					navic.attach(client, bufnr)
				end
			}
			require'lspconfig'.rust_analyzer.setup{
				on_attach = function(client, bufnr)
					navic.attach(client, bufnr)
				end
			}
		end,
	},

	{
		"SmiteshP/nvim-navic",
		lazy = true,
		event = 'LspAttach',
		version = false,
		dependencies = { "neovim/nvim-lspconfig" },
		opts = {
			icons = {
        File          = " ",
        Module        = " ",
        Namespace     = " ",
        Package       = " ",
        Class         = " ",
        Method        = " ",
        Property      = " ",
        Field         = " ",
        Constructor   = " ",
        Enum          = "練",
        Interface     = "練",
        Function      = " ",
        Variable      = " ",
        Constant      = " ",
        String        = " ",
        Number        = " ",
        Boolean       = "◩ ",
        Array         = " ",
        Object        = " ",
        Key           = " ",
        Null          = "ﳠ ",
        EnumMember    = " ",
        Struct        = " ",
        Event         = " ",
        Operator      = " ",
        TypeParameter = " ",
    },
    highlight = false,
    separator = "  ",
    depth_limit = 5,
    depth_limit_indicator = "",
    safe_output = true
		},
		config = function (_,opts)
			require'nvim-navic'.setup(opts);
		end
	},

	{
    'williamboman/mason-lspconfig.nvim',
		lazy = false,
		events = { 'BufReadPre', 'BufNewFile' },
		dependancies = {
			'williamboman/mason.nvim',
		},
		opts = {
			ensure_installed = { "lua_ls", "rust_analyzer", "clangd"},
			automatic_installation = true,
		},
		config = function (_, opts)
			require'mason-lspconfig'.setup(opts)
		end,
	},

	{
		'williamboman/mason.nvim',
		lazy = true,
		cmd = 'Mason',
		config = function (_, opts)
			require'mason'.setup(opts)
		end,
	}
}
