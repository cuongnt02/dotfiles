vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or 				, branch = '0.1.x',
		requires = {{'nvim-lua/plenary.nvim'},
                    {'nvim-tree/nvim-web-devicons'},
                    {'nvim-treesitter/nvim-treesitter'}
        }
	}
    use {
        'nvim-telescope/telescope-file-browser.nvim',
        dependencies = {
            {'nvim-telescope/telescope.nvim'},
            {'nvim-lua/plenary.nvim'}
        }
    }
	use ({
		'ellisonleao/gruvbox.nvim',
	})

	use {
		'mbbill/undotree'
	}

	use {
		'tpope/vim-fugitive'
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'}
		}
	}

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

    use('folke/todo-comments.nvim')

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

end)
