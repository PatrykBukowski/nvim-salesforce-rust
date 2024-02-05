local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>aa", mark.add_file)
vim.keymap.set("n", "<leader>af", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>aq", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>aw", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>ae", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>ar", function()
	ui.nav_file(4)
end)
