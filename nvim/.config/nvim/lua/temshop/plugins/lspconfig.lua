return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = false,
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"clangd",
					"pyright",
					"jdtls",
				},
				automatic_enable = false,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			local lspui = require("lspconfig.ui.windows")
			lspui.default_options.border = "double"

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						completion = {
							showWord = "Disable",
						},
					},
				},
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
				name = "bash-language-server",
				cmd = { "bash-language-server", "start" },
			})
			require("lspconfig").pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.jdtls.setup({})
			lspconfig.rust_analyzer.setup({
				settings = {
					["rust-analyzer"] = {
						typing = {
							continueCommentsOnNewLine = false,
						},
						diagnostics = {
							enable = false,
							experimental = {
								enable = true,
							},
						},
					},
				},
				on_attach = function(_, bufnr)
					vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
				end,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
				init_options = {
					fallbackFlags = { "-std=c++23" },
				},
			})
			lspconfig.cssls.setup({
				settings = {
					css = {
						validate = true,
					},
				},
			})
		end,
	},
}
