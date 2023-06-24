
return {
	{
		'goolord/alpha-nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		event = "BufEnter",
		config = function ()
			require'alpha'.setup(require'alpha.themes.startify'.config)
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

	-- bufferline
  {
    "akinsho/bufferline.nvim",
		events = 'BufNew',
		opts = {
			options = {
				mode = "buffer",
				indicator = { style = 'icon' },
				buffer_close_icon = ' ',
				truncate_names = true,
				modified_icon = '●',
				left_trunc_marker = '',
				right_trunc_marker = '',
				separator_style = "",
				show_buffer_close_icons = false,
				show_close_icon = false,
				show_duplicate_prefix = false,
				show_buffer_icons = true,
				enforce_regular_tabs = true,
				always_show_bufferline = false,
				color_icons = true, -- whether or not to add the filetype icon highlights
				offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
			},
		}
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

	{
		"Pocco81/true-zen.nvim",
		event = "BufReadPost",
		opts = {
			modes = { -- configurations per mode
				ataraxis = {
					shade = "dark", -- if `dark` then dim the padding windows, otherwise if it's `light` it'll brighten said windows
					backdrop = 0, -- percentage by which padding windows should be dimmed/brightened. Must be a number between 0 and 1. Set to 0 to keep the same background color
					minimum_writing_area = { -- minimum size of main window
						width = 70,
						height = 44,
					},
					quit_untoggles = true, -- type :q or :qa to quit Ataraxis mode
					padding = { -- padding windows
						left = 52,
						right = 52,
						top = 0,
						bottom = 0,
					},
					callbacks = { -- run functions when opening/closing Ataraxis mode
						open_pre = nil,
						open_pos = nil,
						close_pre = nil,
						close_pos = nil
					},
				},
				minimalist = {
					ignored_buf_types = { "nofile" }, -- save current options from any window except ones displaying these kinds of buffers
					options = { -- options to be disabled when entering Minimalist mode
						number = false,
						relativenumber = false,
						showtabline = 0,
						signcolumn = "no",
						statusline = "",
						cmdheight = 1,
						laststatus = 0,
						showcmd = false,
						showmode = false,
						ruler = false,
						numberwidth = 1
					},
					callbacks = { -- run functions when opening/closing Minimalist mode
						open_pre = nil,
						open_pos = nil,
						close_pre = nil,
						close_pos = nil
					},
				},
				narrow = {
					--- change the style of the fold lines. Set it to:
					--- `informative`: to get nice pre-baked folds
					--- `invisible`: hide them
					--- function() end: pass a custom func with your fold lines. See :h foldtext
					folds_style = "informative",
					run_ataraxis = true, -- display narrowed text in a Ataraxis session
					callbacks = { -- run functions when opening/closing Narrow mode
						open_pre = nil,
						open_pos = nil,
						close_pre = nil,
						close_pos = nil
					},
				},
				focus = {
					callbacks = { -- run functions when opening/closing Focus mode
						open_pre = nil,
						open_pos = nil,
						close_pre = nil,
						close_pos = nil
					},
				}
			},
			integrations = {
				tmux = false, -- hide tmux status bar in (minimalist, ataraxis)
				kitty = { -- increment font size in Kitty. Note: you must set `allow_remote_control socket-only` and `listen_on unix:/tmp/kitty` in your personal config (ataraxis)
					enabled = false,
					font = "+3"
				},
				twilight = false, -- enable twilight (ataraxis)
				lualine = true -- hide nvim-lualine (ataraxis)
			},
		}
	}
}
