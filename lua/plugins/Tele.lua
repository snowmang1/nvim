return {
	{
		"nvim-telescope/telescope.nvim",
    cmd = "Telescope",
		version = false,
		keys = {
			{'<leader>ff', '<cmd>Telescope find_files<cr>', desc = "search current working dir files, respects .gitignore"},
			{'<leader>fg', '<cmd>Telescope live_grep<cr>',	desc = "live grep current working dir"},
			{'<leader>fb', '<cmd>Telescope buffers<cr>',		desc = "search active buffers"},
			{'<leader>fh', '<cmd>Telescope help_tags<cr>',	desc = "search help tags"},
			{'<leader>fp', '<cmd>Telescope git_files<cr>',	desc = "searches all git inclusives files"},
		},
	}
}
