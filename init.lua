vim.g.mapleader = " " -- Set map leader

-- Bootstrap package manager (lazy.nvim)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup the package manager with plugins and configuration options
require("lazy").setup({
  -- Default theme
  "devraza/kagayaki.nvim",

  "folke/which-key.nvim",
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  "neovim/nvim-lspconfig",
  "romgrk/barbar.nvim",
  "nvim-lualine/lualine.nvim",
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true
  },
  {"ellisonleao/glow.nvim", config = true, cmd = "Glow"},
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  "rktjmp/lush.nvim",
   {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = "maintained",
    }
  },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  };
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/NAS/Neorg/Notes",
              },
            },
          },
        },
      }
    end,
  },
})

-- Imports from files
require 'core'
