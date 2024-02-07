require("neorg").setup {
  load = {
    ["core.defaults"] = {},
    ["core.dirman"] = {
      config = {
        workspaces = {
          notes = "~/NAS/Documents/Neorg/",
        },
      },
    },
    ["core.concealer"] = {
      config = {
        icons_preset = "varied"
      },
    },
  },
}

-- Keybinds
local wk = require("which-key")

wk.register({
  n = {
    name = "neorg",
    f = { "<cmd>Telescope find_files search_dirs=~/NAS/Documents/Neorg<cr>", "Search for notes" },
  },
}, { prefix = "<leader>" })
