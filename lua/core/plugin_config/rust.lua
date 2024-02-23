local Terminal = require("toggleterm.terminal").Terminal
vim.keymap.set("n", "<leader>Cb", ":!cargo build<CR>")
vim.keymap.set("n", "<leader>Ch", ":!cargo check<CR>")
vim.keymap.set("n", "<leader>Cr", ":!cargo build --release<CR>")
vim.keymap.set("n", "<leader>Cf", ":!cargo fix --allow-dirty<CR>")

local cargo_run = Terminal:new({ cmd = "cargo run", hidden = true, close_on_exit = false })
function _cargo_run()
	cargo_run:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>c", "<cmd>lua _cargo_run()<CR>", { noremap = true, silent = true })

vim.g.rustfmt_autosave = 1
