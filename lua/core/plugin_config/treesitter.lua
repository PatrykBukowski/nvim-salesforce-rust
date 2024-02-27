require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = { "apex", "lua", "jsdoc", "html", "css", "javascript", "typescript", "rust", "java" },

	-- Install parsers synchronously (only applied to 'ensure_installed')
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
	additional_vim_regex_highlighting = false,
})
