vim.keymap.set("n", "<leader>sf", require("sf.org").fetch)
vim.keymap.set("n", "<leader>sd", require("sf.term").saveAndPush)
vim.keymap.set("n", "<leader>sRr", require("sf.term").retrieve)
vim.keymap.set("n", "<leader>sr", require("sf.term").retrieve)
vim.keymap.set("n", "<C-c>", require("sf.term").cancel)
vim.keymap.set("n", "<leader>sTa", require("sf.term").runAllTestsInCurrentFile)
vim.keymap.set("n", "<leader>sTt", require("sf.term").runCurrentTest)
vim.keymap.set("n", "<leader>st", require("sf.term").runCurrentTest)
vim.keymap.set("n", "<leader>ss", require("sf.term").toggle)
vim.keymap.set("n", "<leader>sc", require("sf.org").set)
vim.keymap.set("n", "<leader>sTo", require("sf.test").open)
vim.keymap.set("n", "<leader>sTr", require("sf.term").repeatLastTests)
vim.keymap.set("n", "<leader>se", require("sf.term").scrollToEnd)

vim.keymap.set("n", "<leader>sRp", function()
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
	)
end)

vim.keymap.set("n", "<leader>saa", function()
	local lwc_name = vim.fn.input("apex name: ")
	local dir = vim.fn.input("force-app/")
	vim.cmd(":!sf apex generate class --name " .. lwc_name .. " --output-dir force-app/" .. dir)
end)

vim.keymap.set("n", "<leader>sRd", function()
  local dir = vim.fn.input("dir: ")
  if dir ~= '' then
    vim.cmd(":!sf force:source:retrieve -x "..dir)
  else
    vim.cmd(":!sf force:source:retrieve -x delta/package.xml")
  end
end)
