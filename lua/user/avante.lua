local status_ok, avante = pcall(require, "avante")
if not status_ok then
	return
end

avante.setup({
	provider = "copilot",
})

local wk = require("which-key")
local avante_api = require("avante.api")

wk.add({
	-- Establish Avante group
	{ "<leader>L", group = "Avante AI Assistant" },

	-- Main functions in normal mode
	{
		"<leader>Lt",
		function()
			avante_api.toggle()
		end,
	},
	{
		"<leader>La",
		function()
			avante_api.ask()
		end,
		desc = "Ask Avante",
	},
	{
		"<leader>Lc",
		function()
			avante_api.clear()
		end,
		desc = "Clear Conversation",
	},
	{
		"<leader>Ln",
		function()
			avante_api.continue()
		end,
		desc = "Continue Generating",
	},
	{
		"<leader>Lm",
		function()
			avante_api.commit()
		end,
		desc = "Generate Commit Message",
	},
	{
		"<leader>Ls",
		function()
			avante_api.search()
		end,
		desc = "Search with AI",
	},

	-- Code generation and modification
	{
		"<leader>Lg",
		function()
			avante_api.gen()
		end,
		desc = "Generate Code",
	},
	{
		"<leader>Lo",
		function()
			avante_api.complete()
		end,
		desc = "Complete Code",
	},

	-- Functions that work in both normal and visual modes
	{
		mode = { "n", "v" },
		{
			"<leader>Le",
			function()
				avante_api.edit()
			end,
			desc = "Edit with Instructions",
		},
		{
			"<leader>Lx",
			function()
				avante_api.explain()
			end,
			desc = "Explain Code",
		},
		{
			"<leader>Lh",
			function()
				avante_api.chat()
			end,
			desc = "Chat with Code",
		},
		{
			"<leader>Ld",
			function()
				avante_api.docs()
			end,
			desc = "Generate Docs",
		},
		{
			"<leader>Lr",
			function()
				avante_api.refactor()
			end,
			desc = "Refactor Code",
		},
		{
			"<leader>Lf",
			function()
				avante_api.fix()
			end,
			desc = "Fix Code",
		},
		{
			"<leader>Ll",
			function()
				avante_api.translate()
			end,
			desc = "Translate Code",
		},
		{
			"<leader>Lp",
			function()
				avante_api.opt()
			end,
			desc = "Optimize Code",
		},
		{
			"<leader>Li",
			function()
				avante_api.repl()
			end,
			desc = "Run Code (REPL)",
		},
		{
			"<leader>Lv",
			function()
				avante_api.plot()
			end,
			desc = "Plot Data",
		},
	},
})
