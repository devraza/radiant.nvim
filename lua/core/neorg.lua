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
    p = { "<cmd>Telescope find_files search_dir=~/NAS/Documents/Neorg cwd=" .. vim.fn.expand("%:p:h") .. " push<cr>", "Search for notes" },
  },
}, { prefix = "<leader>" })
