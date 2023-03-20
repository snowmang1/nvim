return {
	{
		'lewis6991/gitsigns.nvim',
		event = "VeryLazy",
		keys = {
			{"<leader>gs", "<cmd>Gitsigns<cr>", desc = "starts Gitsigns"}
		},
		opts = {
			signs = {
				add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
			cusigncolumn = false,  -- Toggle with `:Gitsigns toggle_signs`
			numhl      = true, -- Toggle with `:Gitsigns toggle_numhl`
			linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
			word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`rrent_line_blame_opts = {
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
				delay = 1000,
				ignore_whitespace = false,
			},
			current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d>',
			signcolumn = false,  -- Toggle with `:Gitsigns toggle_signs`
		},
		config = function (_, opts)
			require('gitsigns').setup(opts)
  	end,
	},

	{
		"folke/trouble.nvim",
		lazy = true,
		module = false,
		cmd = { "TroubleToggle", "Trouble" },
		keys = {
			{ "<leader>tt", "<cmd>TroubleToggle<CR>",						desc =  "Trouble catchall window"},
			{ "<leader>tq", "<cmd>TroubleToggle quickfix<CR>",	desc =  "Trouble quickfix list"},
			{ "<leader>tl", "<cmd>TroubleToggle loclist<CR>",		desc =  "Trouble location list"},
		},
		opts = { use_diagnostic_signs = true },
		config = function (_, opts)
			require("trouble").setup(opts)
		end,
	},

}
