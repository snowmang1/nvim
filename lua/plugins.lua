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
	use {
    'numToStr/Comment.nvim',
    config = Get_setup('comment')
	}
	use {
		'catppuccin/nvim',
		as = 'catppuccin',
		run = ':CatppuccinCompile',
		config = Get_setup('catpuccino'),
	}
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		config = Get_setup('tele'),
		requires = { {'kyazdani42/nvim-web-devicons'},{'BurntSushi/ripgrep'}, {'nvim-lua/plenary.nvim'} }
	}
	use {
		'norcalli/nvim-colorizer.lua',
		config = Get_setup('nvim-color')
	}
	use {
		'j-hui/fidget.nvim',
		config = Get_setup('fidget')
	}
	use {
		'lewis6991/gitsigns.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = Get_setup('gitsigns'),
		branch = "main",
		tag = 'release' -- To use the latest release
	}
	use {
		'TimUntersberger/neogit',
		requires = 'nvim-lua/plenary.nvim',
		config = Get_setup('neogit')
	}
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = Get_setup('trouble'),
	}
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = Get_setup('lsp_lines')
	})
	use ({
		'p00f/nvim-ts-rainbow',
		branch = 'master',
		config = Get_setup('ts-rainbow')
	})
	use {'nvim-treesitter/nvim-treesitter-textobjects'}
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
  use {
		'neovim/nvim-lspconfig',						-- Configuration for Nvim LSP, config is in ftplugins
		config = Get_setup('lsp-config')
	}
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
end)

