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

			-- If you want icons for diagnostic errors, you'll need to define them somewhere:
      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "", texthl = "DiagnosticSignHint"})
      -- NOTE: this is changed from v1.x, which used the old style of highlight groups
      -- in the form "LspDiagnosticsSignWarning"

			require("neo-tree").setup(opts)
		end,
	},
}
