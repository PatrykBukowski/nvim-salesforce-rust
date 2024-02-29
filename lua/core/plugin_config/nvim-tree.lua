vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	view = {
		width = 60,
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
	update_focused_file = {
		enable = true,
	},
	on_attach = function(bufnr)
		local api = require("nvim-tree.api")

		api.config.mappings.default_on_attach(bufnr)

		vim.keymap.set("n", "<leader>vv", api.node.open.vertical)
		vim.keymap.set("n", "<leader>vh", api.node.open.horizontal)
	end,
})

vim.keymap.set("n", "<leader>n", ":NvimTreeFocus<CR>")
