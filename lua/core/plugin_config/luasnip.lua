local ls = require("luasnip")

local snippet = ls.parser.parse_snippet
local insert = ls.insert_node
local text = ls.text_node
vim.keymap.set({ "i", "s" }, "<C-s>", function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end)

ls.add_snippets("javascript", {
	snippet("cond", "$1 ? $2 : $0;"),
	snippet("try", "try{\n  $1\n} catch(error){\n $0\n}"),
	snippet("clg", "console.log($0);"),
})

ls.add_snippets("rust", {
	snippet("clg", 'println!("$1")$0'),
})

ls.add_snippets("all", {
  snippet("%%", "{% $1 \"$0\" %}"),
  snippet("%%%", "{% block $1 %}\n$0\n{% endblock %}")
})
