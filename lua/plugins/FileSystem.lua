return {
	{
		'echasnovski/mini.files',
		version = false,
		opts = {},
		config = function (_,opts)
			require('mini.files').setup(opts);
		end
	},
}
