
return {
	{
		'goolord/alpha-nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		event = {"BufEnter"},
		config = function ()
			require'alpha'.setup(require'alpha.themes.dashboard'.config)
		end,
	},

	{
		"rcarriga/nvim-notify",
		lazy = true,
		opts = {
      timeout = 3000,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
    },
	},

	{	-- Taken directly from LazyVIM
    "folke/noice.nvim",
		event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
      },
    },
    -- stylua: ignore
    keys = {
      { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },
      { "<leader>snl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },
      { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },
      { "<leader>sna", function() require("noice").cmd("all") end, desc = "Noice All" },
      { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll forward", mode = {"i", "n", "s"} },
      { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll backward", mode = {"i", "n", "s"}},
    },
  },

  { "nvim-tree/nvim-web-devicons", lazy = true },

	{
		'echasnovski/mini.indentscope',
		event = { "BufReadPre", "BufNewFile" },
		version = false,
		lazy = true,
		opts = {
			symbol = '│',
			options = { try_as_border = true },
		},
		init = function()
      vim.api.nvim_create_autocmd("FileType", { -- autocmd to stop the border from apearing on these filetypes
        pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
		config = function (_, opts)
			require('mini.indentscope').setup(opts)
		end,
	},

  { "MunifTanjim/nui.nvim", lazy = true },

	{ "folke/zen-mode.nvim",
		events = 'ZenMode',
		keys = {
			{"<leader>z", "<cmd>ZenMode<cr>", desc = "start ZenMode"}
		},
		opts = {
			window = {
				backdrop = 1.0, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
				-- height and width can be:
				-- * an absolute number of cells when > 1
				-- * a percentage of the width / height of the editor when <= 1
				-- * a function that returns the width or the height
				width = .60, -- width of the Zen window
				height = 1, -- height of the Zen window
				-- by default, no options are changed for the Zen window
				-- uncomment any of the options below, or add other vim.wo options you want to apply
				options = {
					signcolumn = "yes", -- disable signcolumn
					number = false, -- disable number column
					relativenumber = false, -- disable relative numbers
					-- cursorline = false, -- disable cursorline
					cursorcolumn = false, -- disable cursor column
					-- foldcolumn = "0", -- disable fold column
					-- list = false, -- disable whitespace characters
				},
			},
			plugins = {
				-- disable some global vim options (vim.o...)
				-- comment the lines to not apply the options
				options = {
					enabled = true,
					ruler = false, -- disables the ruler text in the cmd line area
					showcmd = false, -- disables the command in the last line of the screen
				},
				twilight = { enabled = false }, -- enable to start Twilight when zen mode opens
				gitsigns = { enabled = false }, -- disables git signs
				tmux = { enabled = false }, -- disables the tmux statusline
				-- lualine = { enabled = true }, -- disables lualine
			},
			-- callback where you can add custom code when the Zen window closes
			-- on_close = function()
			-- end,
		}
	}
}
