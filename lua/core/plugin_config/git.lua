vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
vim.keymap.set("n", "<leader>gc", vim.cmd.Gdiffsplit)
vim.keymap.set("n", "<leader>gP", function()
  local message = vim.fn.input("Message: ")
  vim.cmd('!git add . && git commit -m"' .. message .. '" && git push')
end)

vim.keymap.set("n", "<leader>gC", function()
  local message = vim.fn.input("Message: ")
  vim.cmd('!git add . && git commit -m"' .. message .. '"')
end)

