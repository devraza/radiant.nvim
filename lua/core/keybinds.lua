local wk = require("which-key")

wk.register({
  f = {
    name = "file",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    g = { "<cmd>Telescope live_grep<cr>", "Find Word" },
    s = { "<cmd>:w<cr>", "Write" },
    w = { "<cmd>:w!<cr>", "Force Write" },

    e = { ":e ", "Edit File", silent = false },
  },
  t = {
    name = "tabs",
    n = { "<cmd>tabnew<cr>", "New Tab" },
    j = { "<cmd>tabprev<cr>", "Previous Tab" },
    k = { "<cmd>tabnext<cr>", "Next Tab" },
  },
  l = {
    name = "lazy",
    u = { "<cmd>Lazy update<cr>", "Update" },
    s = { "<cmd>Lazy sync<cr>", "Sync" },
  },
  g = {
    name = "git",
    p = { "<cmd>Neogit cwd=%:p:h push<cr>", "Push Popup" },
    c = { "<cmd>Neogit cwd=%:p:h commit<cr>", "Commit Popup" },
  },
  ["."] = { ":e ", "Edit File", silent = false },
}, { prefix = "<leader>" })
