local mason = require "custom.overrides.mason"
local treesitter = require "custom.overrides.treesitter"
local telescope = require "custom.overrides.telescope"
local nvimtree = require "custom.overrides.nvimtree"
local indent_blankline = require "custom.overrides.indent_blankline"

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
    "lukas-reineke/indent-blankline.nvim",
    opts = indent_blankline,
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
    opts = {},
  },
  {
    "mbbill/undotree",
    cmd = { "UndotreeToggle" },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  {
    "folke/which-key.nvim",
    enabled = true,
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
  },
}
return plugins
