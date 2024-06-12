return {
	{ "nvim-lua/plenary.nvim" }, -- Useful lua functions used by lots of plugins
	{ "windwp/nvim-autopairs", event = "InsertEnter" }, -- Autopairs, integrates with both cmp and treesitter
	{ "numToStr/Comment.nvim", lazy = false },
	{ "JoosepAlviste/nvim-ts-context-commentstring" },
	{ "nvim-tree/nvim-tree.lua" },
	{ "nvim-tree/nvim-web-devicons" },
	{ "akinsho/bufferline.nvim" },
	{ "moll/vim-bbye" },
	{ "nvim-lualine/lualine.nvim" },
	{ "akinsho/toggleterm.nvim" },
	{ "ahmedkhalf/project.nvim" },
	{ "lewis6991/impatient.nvim" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "goolord/alpha-nvim" },
	{ "folke/which-key.nvim" },

	-- Colorschemes
	{ "lunarvim/darkplus.nvim" },
	{ "folke/tokyonight.nvim" },

	-- Cmp
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-vsnip" },
			{ "hrsh7th/vim-vsnip" },
		},
	}, -- The completion plugin
	{ "hrsh7th/cmp-buffer" }, -- buffer completions
	{ "hrsh7th/cmp-path" }, -- path completions
	{ "saadparwaiz1/cmp_luasnip" }, -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },

	-- Github Copilot

	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
	},
	{
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
	-- Snippets
	{ "L3MON4D3/LuaSnip" }, --snippet engine
	{ "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use

	-- LSP
	{ "neovim/nvim-lspconfig" }, -- enable LSP
	{ "williamboman/mason.nvim" }, -- simple to use language server installer
	{ "williamboman/mason-lspconfig.nvim" },
	{ "nvimtools/none-ls.nvim" }, -- for formatters and linters
	{ "RRethy/vim-illuminate" },
	{ "nvimdev/lspsaga.nvim", after = "nvim-lspconfig" },
	{ "scalameta/nvim-metals", dependencies = { "nvim-lua/plenary.nvim" } },

	-- Telescope
	{ "nvim-telescope/telescope.nvim" },
  { "LinArcX/telescope-env.nvim" },
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
	},

	-- Git
	{ "lewis6991/gitsigns.nvim" },

	-- Markdown Preview

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	{ "catppuccin/nvim", as = "catppuccin" },

	-- Visual enhance
	{ "nvim-focus/focus.nvim" },
	-- lazy.nvim
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--q   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},
	{ "j-hui/fidget.nvim" },
}