local bo = vim.bo

bo.expandtab = true
bo.tabstop = 2
bo.shiftwidth = 2

vim.api.nvim_buf_create_user_command(0, 'Cite',
	function(opts)
		vim.cmd.normal { args = {"i", "<d-cite key=\"", opts.fargs[1], "\"></d-cite>", escape}, bang = false}
		vim.cmd.normal { args = {"F x", "F x", "2F x", escape}, bang = false}
	end,
	{ nargs = 1 })

vim.api.nvim_buf_create_user_command(0, 'Foot',
	function()
		vim.cmd.normal { args = {"i", "<d-footnote></d-footnote>", escape}, bang = false}
		vim.cmd.normal { args = {"F x", "10l", "i  ", escape}, bang = false}
	end,
	{ nargs = 0 })
