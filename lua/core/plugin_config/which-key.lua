local wk = require("which-key")

wk.register({
	["<leader>"] = {
    w = { "wiki", mode = "n"},
		u = {
			"[u]ndo tree",
			mode = "n",
		},
		a = {
			"+h[a]rpoon",
			a = { "[a]dd file", mode = "n" },
			f = { "[f]ind file", mode = "n" },
			q = { "q spell", mode = "n" },
			w = { "w spell", mode = "n" },
			e = { "e spell", mode = "n" },
			r = { "ulti spell", mode = "n" },
		},
		l = { "format [l]ines and save file", mode = "n" },
		L = { "format [L]ines", mode = "n" },
		w = { "[w]hich key" },
		n = { "toggle [n]vimtree" },
		t = {
			"+[t]elescope",
			t = { "find files" },
			o = { "[o]ld files" },
			h = { "[h]elp tags" },
			b = { "[b]uffer" },
			g = { "[g]it files" },
			p = { "[p]roject search" },
		},
		h = { "no [h]ighlight search" },
		y = {
			{ "[y]ank to system", mode = { "v", "n" } },
		},
		d = {
			{ "[d]elete and yank to system", mode = { "n", "v" } },
		},
		Y = {
			{ "[Y]ank line to system", mode = "n" },
		},
		vws = { "go to [w]orkspace [s]ymbol", mode = "n" },
		vd = { "open float ??", mode = "n" },
		vca = { "[c]ode [a]ction", mode = "n" },
		vrr = { "[r]efe[r]ences", mode = "n" },
		vrn = { "[r]e[n]ame", mode = "n" },
		vv = { "[v]ertical split", mode = "n" },
		g = {
			"+[g]it",
			l = { "highlight [l]ine", mode = "n" },
			s = { "[s]tatus", mode = "n" },
			w = { "highlight [w]ord", mode = "n" },
			b = { "[b]lame", mode = "n" },
			r = { "[r]emove index.lock", mode = "n" },
			p = { "[p]ush", mode = "n" },
		},
	},
	J = {
		"move selected lines up",
		mode = "v",
	},
	K = {
		"move selected lines down",
		mode = "v",
	},
	["<C-t>"] = {
		"toggle terminal",
	},
	gd = { "[g]o to [d]efinition", mode = "n" },
	K = { "hover ??", mode = "n" },
	["[d"] = { "go to next", mode = "n" },
	["]d"] = { "go to previous", mode = "n" },
	["<C-h>"] = { "signature help", mode = "i" },
	["<C-k>"] = { "cmp - previous item", mode = "i" },
	["<C-j>"] = { "cmp - next item", mode = "i" },
	["<C-l>"] = { "cmp - confirm", mode = "i" },
	["<C-Space>"] = { "cmp - complete", mode = "i" },
	["<leader>s"] = {
		"+[s]alesforce",
		f = { "[f]etch org info", mode = "n" },
		d = { "[d]eploy current file", mode = "n" },
		R = { "+[R]etrieve",  
      d = {"[d]elta", mode = "n"},
      r = {"cu[r]rent component", mode = "n"},
      p = {"[p]rofile", mode = "n"}
    },
    r = {"[r]etrieve current component", mode = "n"},
		c = { "[c]hange org", mode = "n" },
		q = { "[s]how/hide terminal", mode = "n" },
		s = { "[s]et target_org current workspace", mode = "n" },
		e = { "[e]nd scroll in terminal", mode = "n" },
		T = {
			"+[T]ests",
			a = { "[a]ll tests in current file", mode = "n" },
			t = { "[t]est under cursor", mode = "n" },
			o = { "[o]pen buf select" },
			r = { "[r]epeat last tests" },
		},
    t = {
      "[t]est under cursor", mode = "n"
    },
		a = { "+[a]dd", a = { "[a]pex class", mode = "n" }, l = { "[l]wc", mode = "n" } },
	},
})
