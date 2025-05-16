return {
  { "nvim-lua/plenary.nvim" },                       -- Useful lua functions used by lots of plugins
  { "windwp/nvim-autopairs",                      event = "InsertEnter" }, -- Autopairs, integrates with both cmp and treesitter
  { "numToStr/Comment.nvim",                      lazy = false },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-tree/nvim-web-devicons" },
  { "echasnovski/mini.icons" },
  { "akinsho/bufferline.nvim" },
  { "moll/vim-bbye" },
  { "nvim-lualine/lualine.nvim" },
  { "akinsho/toggleterm.nvim" },
  { "ahmedkhalf/project.nvim" },
  { "lewis6991/impatient.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "goolord/alpha-nvim" },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },

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
  },                             -- The completion plugin
  { "hrsh7th/cmp-buffer" },      -- buffer completions
  { "hrsh7th/cmp-path" },        -- path completions
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
  { "L3MON4D3/LuaSnip" },            --snippet engine
  { "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use

  -- LSP and debugger
  { "neovim/nvim-lspconfig" },                                                                     -- enable LSP
  { "mfussenegger/nvim-dap" },                                                                     -- debugger
  { "williamboman/mason.nvim" },                                                                   -- simple to use language server installer
  { "williamboman/mason-lspconfig.nvim" },
  { "nvimtools/none-ls.nvim" },                                                                    -- for formatters and linters
  { "RRethy/vim-illuminate" },
  { "scalameta/nvim-metals",            dependencies = { "nvim-lua/plenary.nvim", "mfussenegger/nvim-dap" } }, -- scala LSP
  { "rcarriga/nvim-dap-ui",             dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }, -- debugger ui
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

  { "catppuccin/nvim",        as = "catppuccin" },

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

  -- tmux navigator
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  { "chentoast/marks.nvim" },
  -- hop, easy motion
  { "smoka7/hop.nvim" },

  -- AI
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    provider = "copilot",
    -- add any opts here
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.pick",      -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp",           -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua",           -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua",     -- for providers='copilot'{
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
