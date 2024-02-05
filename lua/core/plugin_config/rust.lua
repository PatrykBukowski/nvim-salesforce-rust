local Terminal = require("toggleterm.terminal").Terminal
-- TODO: remove this when rust is configured

-- vim.keymap.set("n", "<leader>sf", require("sf.org").fetch)
-- vim.keymap.set("n", "<leader>sd", require("sf.term").saveAndPush)
-- vim.keymap.set("n", "<leader>sr", require("sf.term").retrieve)

-- vim.keymap.set("n", "<leader>sp", function()
-- 	vim.cmd(':!sfp profile:retrieve -n "' .. vim.fn.input("") .. '" -u ' .. require("sf.org").get_target_org())
-- end)

-- vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
vim.keymap.set("n", "<leader>cb", ":!cargo build<CR>")
vim.keymap.set("n", "<leader>ch", ":!cargo check<CR>")
vim.keymap.set("n", "<leader>cr", ":!cargo build --release<CR>")
vim.keymap.set("n", "<leader>cf", ":!cargo fix --allow-dirty<CR>")

local cargo_run = Terminal:new({ cmd = "cargo run", hidden = true, close_on_exit = false })
function _cargo_run()
	cargo_run:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>lua _cargo_run()<CR>", { noremap = true, silent = true })

vim.g.rustfmt_autosave = 1
