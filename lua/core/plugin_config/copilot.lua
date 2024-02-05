require("copilot").setup({
	filetypes = {
		gitcommit = true,
		hgcommit = true,
	},
	suggestion = {
		enabled = true,
		auto_trigger = false,
		keymap = {},
	},
})

vim.keymap.set("i", "<C-p>", function()
	require("copilot.suggestion").prev()
end)
vim.keymap.set("i", "<C-n>", function()
	require("copilot.suggestion").next()
end)
vim.keymap.set("i", "<C-Space>", function()
	require("copilot.suggestion").accept()
end)
vim.keymap.set("i", "<C-h>", function()
	require("copilot.suggestion").hide()
end)
