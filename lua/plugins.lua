-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- :PackerSync after finish changing this file always

function Get_setup(name)
	return string.format('require("setup/%s")', name)
end

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.vim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'					-- Package Manager
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = Get_setup('lsp_lines')
	})
	use({
		"Pocco81/true-zen.nvim",
		config = Get_setup('zen')
	})
	use ({
		'p00f/nvim-ts-rainbow',
		branch = 'master',
		config = Get_setup('ts-rainbow')
	})
	use {'nvim-treesitter/nvim-treesitter-textobjects'}
	use {'shaunsingh/oxocarbon.nvim', run = './install.sh'} -- oxocarbon color scheme
	use {
    'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = Get_setup('alpha')
	}
	use({
    "kylechui/nvim-surround",
		branch = 'main',
    config = Get_setup('surround')
	})
	use {																	-- hop
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		config = Get_setup('hop')
	}
  use 'neovim/nvim-lspconfig'						-- Configuration for Nvim LSP, config is in ftplugins
  use {																	-- Treesitter model for syntax highlighting
		'nvim-treesitter/nvim-treesitter',
		config = Get_setup('nvim-treesitter'),
		run = ':TSUpdate'
	}
  use {																	-- Nvim Tree
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',	-- optional, for file icons
		},
		tag = 'nightly',
		config = Get_setup('nvim-tree')
	}
  use {
		'nvim-lualine/lualine.nvim',
		config = Get_setup("lualine"),
		event = "VimEnter",
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
  use { -- diffview.nvim
		'sindrets/diffview.nvim',
		config = Get_setup('diffview'),
		requires = 'nvim-lua/plenary.nvim'
	}
	------------- colors
	use 'ray-x/aurora'
end)

