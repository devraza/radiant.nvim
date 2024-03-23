local wk = require("which-key")

wk.register({
  f = {
    name = "file",
    f = { "<cmd>Telescope find_files search_dirs=~/Projects/<cr>", "Find File (~)" },
    a = { "<cmd>Telescope find_files hidden=true search_dirs=~<cr>", "Find Hidden (~)" },
    p = { "<cmd>Telescope find_files hidden=true<cr>", "Find File" },
    g = { "<cmd>Telescope live_grep<cr>", "Find Word" },
    s = { "<cmd>:w<cr>", "Write" },
    w = { "<cmd>:w!<cr>", "Force Write" },

    e = { ":e ", "Edit File", silent = false },
  },
  t = {
    name = "tabs",
    n = { "<cmd>tabnew<cr>", "New Tab" },
    j = { "<cmd>BufferPrevious<cr>", "Previous" },
    k = { "<cmd>BufferNext<cr>", "Next" },
    h = { "<cmd>BufferMovePrevious<cr>", "Move Previous" },
    l = { "<cmd>BufferMoveNext<cr>", "Move Next" },
  },
  b = {
    name = "buffers",
    d = { "<cmd>BufferDelete!<cr>", "Delete" },
    c = { "<cmd>BufferClose!<cr>", "Close" },
  },
  r = {
    name = "tree",
    t = { "<cmd>NvimTreeToggle<cr>", "Toggle" },
    f = { "<cmd>NvimTreeFocus<cr>", "Focus" },
  },
  g = {
    name = "git",
    g = { "<cmd>Neogit<cr>", "Neogit" },
  },
  ["."] = { ":e ", "Edit File", silent = false },
}, { prefix = "<leader>" })
