return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			c = { "kys" },
			cpp = { "kys" },
			lua = { "stylua" },
			python = { "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
			json = { "fixjson" },
			jsonc = { "fixjson" },
		},
		formatters = {
			kys = {
				command = "clang-format",
				args = {"--style={BasedOnStyle: Microsoft, UseTab: Always}"}
			}
		},
	},
	keys = {
		{ "<leader>cc", ":lua require('conform').format()<cr>" },
	},
}
