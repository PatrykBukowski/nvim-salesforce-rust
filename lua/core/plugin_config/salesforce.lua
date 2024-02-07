vim.keymap.set("n", "<leader>sf", require("sf.org").fetch)
vim.keymap.set("n", "<leader>sd", require("sf.term").saveAndPush)
vim.keymap.set("n", "<leader>srr", require("sf.term").retrieve)
vim.keymap.set("n", "<C-c>", require("sf.term").cancel)
vim.keymap.set("n", "<leader>sta", require("sf.term").runAllTestsInCurrentFile)
vim.keymap.set("n", "<leader>stt", require("sf.term").runCurrentTest)
vim.keymap.set("n", "<leader>ss", require("sf.term").toggle)
vim.keymap.set("n", "<leader>sc", require("sf.org").set)
vim.keymap.set("n", "<leader>sto", require("sf.test").open)
vim.keymap.set("n", "<leader>str", require("sf.term").repeatLastTests)
vim.keymap.set("n", "<leader>se", require("sf.term").scrollToEnd)

vim.keymap.set("n", "<leader>srp", function()
	vim.cmd(':!sfp profile:retrieve -n "' .. vim.fn.input("") .. '" -u ' .. require("sf.org").get_target_org())
end)

vim.keymap.set("n", "<leader>sal", function()
	local lwc_name = vim.fn.input("lwc name: ")
	local dir = vim.fn.input("force-app/")
	vim.cmd(
		":!sf lightning generate component --type lwc --name "
			.. lwc_name
			.. " --output-dir force-app/"
			.. dir
			.. "/lwc"
	)
end)

vim.keymap.set("n", "<leader>saa", function()
	local lwc_name = vim.fn.input("apex name: ")
	local dir = vim.fn.input("force-app/")
	vim.cmd(":!sf apex generate class --name " .. lwc_name .. " --output-dir force-app/" .. dir .. "/classes")
end)

vim.keymap.set("n", "<leader>srd", function()
  local dir = vim.fn.input("dir: ")
  if dir ~= '' then
    vim.cmd(":!sf force:source:retrieve -x "..dir)
  else
    vim.cmd(":!sf force:source:retrieve -x delta/package.xml")
  end
end)
