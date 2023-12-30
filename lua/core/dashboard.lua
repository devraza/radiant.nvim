require("dashboard").setup({
  theme = 'hyper',
    config = {
      header = {
        " quark.nvim",
        "",
      },
      shortcut = {
        { desc = 'Update', group = '@property', action = 'Lazy update', key = 'u' },
        { desc = 'Files', group = '@property', action = 'Telescope find_files', key = 'f' },
      },
      footer = {},
    },
})
