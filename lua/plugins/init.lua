return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePost", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "autopep8",
        "css-lsp",
        "eslint_d",
        "flake8",
        "html-lsp",
        "lua-language-server",
        "luacheck",
        "prettier",
        "python-lsp-server",
        "stylua",
        "typescript-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "typescript",
        "javascript",
        "tsx",
        "styled",
        "python",
      },
    },
  },
  {
    "barrett-ruth/import-cost.nvim",
    build = "sh install.sh yarn",
    event = "BufReadPost", -- Load when a buffer is read
    config = function()
      require("import-cost").setup {
        -- Configuration options for import-cost.nvim
      }
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      require("ibl").setup {
        indent = { char = "▏" },
      }
    end,
  },
}
