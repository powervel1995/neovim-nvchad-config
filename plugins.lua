local mason = require "custom.overrides.mason"
local treesitter = require "custom.overrides.treesitter"
local telescope = require "custom.overrides.telescope"
local nvimtree = require "custom.overrides.nvimtree"

local plugins = {
  { "elkowar/yuck.vim", lazy = false },
  {
    "williamboman/mason.nvim",
    opts = mason,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = treesitter,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = telescope,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = nvimtree,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "folke/neodev.nvim",
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "mbbill/undotree",
    cmd = { "UndotreeToggle" },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    -- NOTE: If you are having trouble with this installation,
    --       refer to the README for telescope-fzf-native for more instructions.
    build = "make",
    cond = function()
      return vim.fn.executable "make" == 1
    end,
  },
  {
    "folke/which-key.nvim",
    enabled = true,
  },
}

return plugins
