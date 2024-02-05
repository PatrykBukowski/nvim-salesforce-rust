local builtin = require("telescope.builtin")

require("telescope").setup({
	extensions = {
		["cls"] = "apex",
		["trigger"] = "apex",
	},
})

vim.keymap.set("n", "<leader>tt", builtin.find_files, {})
vim.keymap.set("n", "<leader>to", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>th", builtin.help_tags, {})
vim.keymap.set("n", "<leader>tb", builtin.buffers, {})
vim.keymap.set("n", "<leader>tg", builtin.git_files, {})
vim.keymap.set("n", "<leader>tp", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>tl", builtin.live_grep, {})

vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>", {})
