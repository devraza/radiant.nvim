require("neorg").setup {
  load = {
    ["core.defaults"] = {},
    ["core.dirman"] = {
      config = {
        workspaces = {
          notes = "~/NAS/Neorg/Notes",
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
