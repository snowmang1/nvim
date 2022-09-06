	-- helper variables
local map = vim.api.nvim_set_keymap

	-- map leader
vim.g.mapleader = ';'

	-- window nav
local nore_opts = { noremap = true, silent = true }
map('n', '<c-h>', '<c-w>h'						, nore_opts)
map('n', '<c-j>', '<c-w>j'						, nore_opts)
map('n', '<c-k>', '<c-w>k'						, nore_opts)
map('n', '<c-l>', '<c-w>l'						, nore_opts)
map('t', '<c-h>', '<c-\\><c-n><c-w>h'	, {silent = true})
map('t', '<c-j>', '<c-\\><c-n><c-w>j'	, {silent = true})
map('t', '<c-k>', '<c-\\><c-n><c-w>k'	, {silent = true})
map('t', '<c-l>', '<c-\\><c-n><c-w>l'	, {silent = true})

	-- couple completion
map('i', '(', '()<Left>', {silent = true})
map('i', '[', '[]<Left>', {silent = true})
map('i', '{', '{}<Left>', {silent = true})

	-- terminal mappings
map('t', '<esc>', '<c-\\><c-n>', {silent = true})

	-- diagnostics
map('n', '<space>d', '<cmd>lua vim.diagnostic.open_float()<CR>'	, nore_opts)
map('n', '<space>n', '<cmd>lua vim.diagnostic.goto_next()<CR>'	, nore_opts)
map('n', '<space>p', '<cmd>lua vim.diagnostic.goto_prev()<CR>'	, nore_opts)

	-- misc keymaps
map('n', '<C-n>'		, '<cmd>NvimTreeToggle<CR>'	, nore_opts)
map('i', '<C-d>'		, '<esc>yypA'						, {silent = true})
map('n', '<C-p>'		, '<cmd>HopWord<CR>'				, nore_opts)
map('n', '<space>h'	, '<cmd>noh<CR>'						, nore_opts)
vim.keymap.set('', '<Leader>l', require('lsp_lines').toggle, { desc = 'Toggle lsp_lines' })

	-- trouble
map("n", "<leader>tt", "<cmd>TroubleToggle<CR>", nore_opts)
map("n", "<leader>tq", "<cmd>TroubleToggle quickfix<CR>", nore_opts)
map("n", "<leader>tl", "<cmd>TroubleToggle loclist<CR>", nore_opts)

	-- hop
map("n", "<leader>hw", "<cmd>HopWord<CR>", nore_opts)

 -- telescope
map('n', '<leader>tff', '<cmd>Telescope find_files<cr>', nore_opts)
map('n', '<leader>tfg', '<cmd>Telescope live_grep<cr>', nore_opts)
map('n', '<leader>tfb', '<cmd>Telescope buffers<cr>', nore_opts)
map('n', '<leader>tfh', '<cmd>Telescope help_tags<cr>', nore_opts)
