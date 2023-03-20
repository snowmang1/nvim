return {
	{
    'folke/which-key.nvim',
		event = {'BufReadPost'},
		opts = {},
    config = function(_, opts)
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require('which-key').setup(opts)
    end,
  },

	{
		'echasnovski/mini.pairs',
		event = 'BufEnter',
		version = false,
		config = function (_, opts)
			require'mini.pairs'.setup(opts)
		end,
	},

	{
		'kylechui/nvim-surround',
		version = false,
		event = 'BufEnter',
		config = function (_, opts)
			require'nvim-surround'.setup(opts)
		end,
	},

	{
		'echasnovski/mini.comment',
		version = false,
		event = 'BufEnter',
		config = function (_, opts)
			require'mini.comment'.setup(opts)
		end
	}
}
