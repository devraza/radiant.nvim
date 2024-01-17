local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')
local fn = vim.fn
local config = dashboard.config

local marginTopPercent = 0.3
local headerPadding = fn.max({2, fn.floor(fn.winheight(0) * marginTopPercent) })

local ascii = {
  "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
  "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
  "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
  "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
  "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
  "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
  "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
  " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
  " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
  "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
  "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
}

local ascii_text = {
	"    dMMMMb  dMMMMMP .aMMMb  dMP dMP dMP dMMMMMMMMb",
	"   dMP dMP dMP     dMP dMP dMP dMP amr dMP dMP dMP",
	"  dMP dMP dMMMP   dMP dMP dMP dMP dMP dMP dMP dMP ",
	" dMP dMP dMP     dMP.aMP  YMvAP  dMP dMP dMP dMP  ",
	"dMP dMP dMMMMMP  VMMMP     VP   dMP dMP dMP dMP   ",
}

local header = {
  type = "text",
  val = ascii,
  opts = {
    position = "center",
    hl = "AlphaHeader",
  },
}

local buttons = {
  type = "group",
  val = {
    dashboard.button("SPC f f", "Find File  "),
    dashboard.button("SPC f g", "Find Word  "),
    dashboard.button("SPC f e", "Edit File  "),
    { type = 'padding', val = 1 },
    dashboard.button("SPC l u", "Update Plugins"),
  },
  opts = {
    spacing = 1,
  },
}

local section = {
  header = header,
  buttons = buttons
}

local config = {
  layout = {
    { type = 'padding', val = headerPadding },
    section.header,
    { type = 'padding', val = 2 },
    section.buttons,
  },
}

dashboard.opts = config

alpha.setup(dashboard.opts)
