local palette = require("core.settings").palette

vim.o.termguicolors = true

vim.cmd("colorscheme " .. (palette or "rose-pine"))

local cmp_colors_completion ={
  ["rose-pine"] = "#332f4a",
  ["gruvbox"] = "#4e4e4e",
  ["tokyonight"] = "#3b4161",
  ["catppuccin"] = "#363654",
}

local cmp_colors_select = {
  ["rose-pine"] = "#585186",
  ["gruvbox"] = "#747474",
  ["tokyonight"] = "#525b87",
  ["catppuccin"] = "#4f4f7a",
}

vim.api.nvim_set_hl(0, "ThemePmenu", {
  bg = cmp_colors_completion[palette or "rose-pine"],
  })
vim.api.nvim_set_hl(0, "ThemePmenuSel", {
  bg = cmp_colors_select[palette or "rose-pine"],
  bold = true,
  })
