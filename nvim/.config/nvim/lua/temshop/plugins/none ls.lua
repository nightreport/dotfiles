return {
	"nvimtools/none-ls.nvim",
	lazy = false,
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.clang_format.with({
					extra_args = {
						"--style=Microsoft",
					},
				}),
			},
		})
		vim.keymap.set("n", "<leader>fd", vim.lsp.buf.format, {})
	end,
}
