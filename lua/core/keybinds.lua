local wk = require("which-key")

wk.register({
  f = {
    name = "file",
    f = { "<cmd>Telescope find_files search_dirs=~<cr>", "Find File (~)" },
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
    j = { "<cmd>tabprev<cr>", "Previous Tab" },
    k = { "<cmd>tabnext<cr>", "Next Tab" },
  },
  g = {
    name = "git",
    p = { "<cmd>Neogit cwd=" .. vim.fn.expand("%:p:h") .. " push<cr>", "Push Popup" },
    c = { "<cmd>Neogit cwd=" .. vim.fn.expand("%:p:h") .. " commit<cr>", "Commit Popup" },
    g = { "<cmd>Neogit<cr>", "Neogit" },
  },
  ["."] = { ":e ", "Edit File", silent = false },
}, { prefix = "<leader>" })
