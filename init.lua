vim.g.mapleader = " " -- Set map leader

-- Setup neogit
local neogit = require('neogit')
neogit.setup {}

-- Setup better-escape.nvim
require("better_escape").setup()

-- Imports from files
require 'core'
