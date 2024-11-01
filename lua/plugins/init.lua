return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        -- vim
  			"lua-language-server",
        "stylua",
        -- web
  			"html-lsp",
        "css-lsp",
        "json-lsp",
        "svelte-language-server",
        "tailwindcss-language-server",
        "js-debug-adapter",
        "eslint_d",
        "htmlhint",
        "standardjs",
        "ts-standard",
        -- other
        "markdownlint",
        "prettier",
        "clangd"
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        -- vim
  			"vim",
        "lua",
        "vimdoc",
        -- web
        "html",
        "css",
        "scss",
        "javascript",
        "jsdoc",
        "json",
        "svelte",
        "typescript",
        -- low-level
        "c",
        "cpp",
        "cmake",
        "make",
        -- system,
        "bash",
        -- other
        "latex",
        "markdown"
  		},
  	},
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "sindrets/diffview.nvim",        -- optional - Diff integration

      "nvim-telescope/telescope.nvim", -- optional
    },
    lazy = false,
    config = true
  },
  {
    "pocco81/auto-save.nvim",
    lazy = false
  },
  {
    "github/copilot.vim",
    lazy = false
  },
  {
    "ThePrimeagen/vim-be-good",
    lazy = false
  }
  -- {
  --   'dense-analysis/ale',
  --   lazy = false,
  --   config = function()
  --       -- Configuration goes here.
  --       local g = vim.g
  --
  --       g.ale_linters = {
  --           lua = {'lua_language_server'},
  --           javascript = {'eslint'},
  --           typescript = {'eslint'}
  --       }
  --
  --   end
  -- }
}
