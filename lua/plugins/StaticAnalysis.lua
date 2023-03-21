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
    'williamboman/mason-lspconfig.nvim',
		lazy = true,
		events = { 'LspAttach' },
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
