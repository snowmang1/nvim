return {
	{	-- neo-tree
		-- while inside neo-tree buffer ? will show all current mappings
		'nvim-neo-tree/neo-tree.nvim',
		cmd = { "Neotree", "NeoTreeFloatToggle" },
		branch = 'v2.x',
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{'<c-n>', '<cmd>NeoTreeFloatToggle<cr>', desc = "toggle neo-tree floating buffer"}
		},
		opts = {
			close_if_last_window = true,
			window = { position = "right" }
		},
		config = function (_, opts)
			vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
			require("neo-tree").setup(opts)
		end,
	},
}
