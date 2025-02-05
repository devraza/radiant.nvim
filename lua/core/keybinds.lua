local wk = require("which-key")

wk.add({
    { "<leader>.", ":e ", desc = "Edit File", silent = false },

    { "<leader>b", group = "buffers" },
    { "<leader>bc", "<cmd>BufferClose!<cr>", desc = "Close" },
    { "<leader>bd", "<cmd>BufferDelete!<cr>", desc = "Delete" },

    { "<leader>e", group = "editor" },
    { "<leader>ec", "<cmd>noh<cr>", desc = "Clear Search" },

    { "<leader>f", group = "file" },
    { "<leader>fa", "<cmd>Telescope find_files hidden=true search_dirs=~<cr>", desc = "Find Hidden (~)" },
    { "<leader>fe", ":e ", desc = "Edit File", silent = false },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File (~)" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Word" },
    { "<leader>fp", "<cmd>Telescope find_files hidden=true<cr>", desc = "Find File" },
    { "<leader>fs", "<cmd>:w!<cr>", desc = "Force Write" },
    { "<leader>fw", "<cmd>:w<cr>", desc = "Write" },

    { "<leader>g", group = "git" },
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },

    { "<leader>r", group = "tree" },
    { "<leader>rf", "<cmd>NvimTreeFocus<cr>", desc = "Focus" },
    { "<leader>rt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle" },

    { "<leader>t", group = "tabs" },
    { "<leader>th", "<cmd>BufferMovePrevious<cr>", desc = "Move Previous" },
    { "<leader>tj", "<cmd>BufferPrevious<cr>", desc = "Previous" },
    { "<leader>tk", "<cmd>BufferNext<cr>", desc = "Next" },
    { "<leader>tl", "<cmd>BufferMoveNext<cr>", desc = "Move Next" },
    { "<leader>tn", "<cmd>tabnew<cr>", desc = "New Tab" },

    { "<leader>l", group = "lazy" },
    { "<leader>lu", "<cmd>Lazy update<cr>", desc = "Update Plugins" },
})
