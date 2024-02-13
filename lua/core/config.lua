require("core.plugin_config.wiki")
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.relativenumber = true
vim.o.number = true
vim.opt.scrolloff = 10
vim.o.backspace = "2"
vim.o.cursorline = true
vim.o.smartindent = true
vim.o.incsearch = true
vim.o.updatetime = 50
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.shiftround = true
vim.o.expandtab = true
vim.o.swapfile = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.filetype.add({
	extension = {
		cls = "apex",
		apex = "apex",
		trigger = "apex",
		cmp = "html",
	},
})

-- keymaps

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')
vim.keymap.set("n", "<leader>w", ":WhichKey<CR>")
vim.keymap.set("n", "<leader>l", "gg=G:w<CR>")
vim.keymap.set("n", "<leader>L", "gg=G")
vim.keymap.set("n", "<leader>gr", ":!rm .git/index.lock<CR>")

vim.cmd [[
    autocmd FileType apex setlocal commentstring=//\ %s
]]
