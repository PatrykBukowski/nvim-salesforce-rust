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
    { name = 'emmet_vim' },
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
      before = function(entry, vim_item) -- for tailwind css autocomplete
        if vim_item.kind == 'Color' and entry.completion_item.documentation then
          local _, _, r, g, b = string.find(entry.completion_item.documentation, '^rgb%((%d+), (%d+), (%d+)')
          if r then
            local color = string.format('%02x', r) .. string.format('%02x', g) ..string.format('%02x', b)
            local group = 'Tw_' .. color
            if vim.fn.hlID(group) < 1 then
              vim.api.nvim_set_hl(0, group, {fg = '#' .. color})
            end
            vim_item.kind = "■" -- or "⬤" or anything
            vim_item.kind_hl_group = group
            return vim_item
          end
        end
        -- vim_item.kind = icons[vim_item.kind] and (icons[vim_item.kind] .. vim_item.kind) or vim_item.kind
        -- or just show the icon
        vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind) or vim_item.kind
        return vim_item
      end

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
