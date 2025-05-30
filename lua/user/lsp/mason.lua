local servers = {
	"lua_ls",
	-- "cssls",
	-- "html",
	-- python
	"pyright",
	"pylsp",
	-- "bashls",
	"jsonls",
	"yamlls",
	"ts_ls",
	"prettierd",
	-- "ruby_ls"
	--"solargraph",
	"kotlin_language_server",
	-- "perlnavigator",
	"vimls",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
	providers = {
		"mason.providers.client",
		"mason.providers.registry-api", -- This is the default provider. You can still include it here if you want, as a fallback to the client provider.
	},
	registries = {
		"github:mason-org/mason-registry",
	},
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end
