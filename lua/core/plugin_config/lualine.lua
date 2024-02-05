require("lualine").setup({
	options = {
		icons_enables = true,
		theme = require("core.settings").palette or "rose-pine",
	},
	sections = {
		lualine_a = {
			{
				"filename",
				path = 1,
			},
		},
		lualine_c = {
			{
				"require'sf.org'.get_target_org()",
				icon = "󰢎",
			},
		},
		lualine_z = { "location", "mode" },
	},
})
