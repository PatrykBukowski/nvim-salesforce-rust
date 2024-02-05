local ok, lspkind = pcall(require, "lspkind")
if not ok then
	return
end

lspkind.init({
	symbol_map = {
		Copilot = "",
	},
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
	sources = {
		{ name = "gh_issues" },
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path", keyword_length = 5 },
		{ name = "nvim_lua" },
		-- { name = "copilot", priority = -30000 },
	},
	--  formatting = lsp_zero.cmp_format(),
	formatting = {
		format = lspkind.cmp_format({
			whit_text = true,
			menu = {
				copilot = "[cop]",
				buffer = "[buf]",
				nvim_lsp = "[lsp]",
				path = "[path]",
				gh_issues = "[issues]",
			},
			maxWidth = 100,
		}),
	},
	mapping = {
		["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
		["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
		["<C-l>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping(function(fallback)
			cmp.close()
			fallback()
		end, { "i" }),
		["<C-n>"] = cmp.mapping(function(fallback)
			cmp.close()
			fallback()
		end, { "i" }),
		["<C-p>"] = cmp.mapping(function(fallback)
			cmp.close()
			fallback()
		end, { "i" }),
	},
	experimental = {
		native_menu = false,
		ghost_text = true,
	},
	window = {
		completion = {
			winhighlight = "Normal:ThemePmenu,FloatBorder:ThemePmenu,CursorLine:ThemePmenuSel,Search:None",
		},
		documentation = {
			border = "rounded",
			winhighlight = "Normal:ThemePmenu,FloatBorder:ThemePmenu,CursorLine:ThemePmenuSel,Search:None",
		},
	},
})
