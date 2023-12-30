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
  "folke/which-key.nvim",
  "nvim-telescope/telescope.nvim",
  "neovim/nvim-lspconfig",
  "romgrk/barbar.nvim",
  "nvim-lualine/lualine.nvim",
  "devraza/particle.nvim",
  "ellisonleao/glow.nvim",
  "rktjmp/lush.nvim",
  {
    "nvimdev/dashboard-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "diff",
        "html",
        "json",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "go",
        "query",
        "regex",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
      },
    }
  }
})

-- Imports from files
require 'core'
