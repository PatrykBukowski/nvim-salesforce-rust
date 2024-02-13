local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	ensure_installed = { "prettierd" },
	sources = {
		null_ls.builtins.formatting.eslint,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.formatting.prettierd.with({
			filetypes = { "apex" },
			extra_args = { "--plugin=prettier-plugin-apex", "--write" },
		}),
		-- null_ls.builtins.diagnostics.pmd.with({
		-- 	filetypes = { "apex" },
		-- 	args = { "check", "--dir", "$ROOT", "--format", "json" },
		-- 	extra_args = { "--rulesets", "apex_ruleset.xml" },
		-- }),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
					vim.lsp.buf.format({ async = false })
					--                    vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
})
