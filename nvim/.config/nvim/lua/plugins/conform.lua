return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			cpp = { "clang-format" },
			lua = { "stylua" },
			python = { "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			json = { "fixjson" },
			jsonc = { "fixjson" },
		},
	},
	keys = {
		{ "<leader>cc", ":lua require('conform').format()<cr>" },
	},
}
