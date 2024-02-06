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
        color = function(section)
          local current_org = require("sf.org").get_target_org()
          if string.find(current_org, 'PROD') then
            return {
              bg = '#ff0000',
              gui = "bold"
            }
          end
          return nil
        end,
				icon = "󰢎",
			},
		},
		lualine_z = { "location", "mode" },
	},
})
