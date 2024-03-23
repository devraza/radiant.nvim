vim.g.mapleader = " " -- Set map leader

-- Setup neogit
local neogit = require('neogit')
neogit.setup {}

-- Setup better-escape.nvim
require("better_escape").setup()

-- nvim-tree.lua setup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- Toggleterm
require("toggleterm").setup{
  open_mapping = [[<M-[>]],
  shade_true = false,
}

-- Imports from files
require 'core'
