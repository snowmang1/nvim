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
		'jose-elias-alvarez/null-ls.nvim',
		version = false,
		lazy = "VeryLazy",
		opts = function ()
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          require("null-ls").builtins.formatting.fish_indent,
          require("null-ls").builtins.diagnostics.fish,
          require("null-ls").builtins.formatting.stylua,
          require("null-ls").builtins.formatting.shfmt,
          require("null-ls").builtins.diagnostics.flake8,
        },
      }
    end,
		config = function (_, opts)
			require'null-ls'.setup(opts)
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
