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
map('n', '<C-n>'		, ':NvimTreeToggle<CR>'	, nore_opts)
map('i', '<C-d>'		, '<esc>yypA'						, {silent = true})
map('n', '<C-p>'		, ':HopWord<CR>'				, nore_opts)
map('n', '<space>h'	, ':noh<CR>'						, nore_opts)

	-- zen mode
map("n", "<leader>e", ":TZNarrow<CR>"			, {})
map("v", "<leader>n", ":'<,'>TZNarrow<CR>", {})
map("n", "<leader>f", ":TZFocus<CR>"			, {})
map("n", "<leader>m", ":TZMinimalist<CR>"	, {})
map("n", "<leader>n", ":TZAtaraxis<CR>"		, {})
