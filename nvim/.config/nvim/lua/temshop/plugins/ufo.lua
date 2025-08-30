return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	config = function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		}
		local language_servers = vim.lsp.get_clients() -- or list servers manually like {'gopls', 'clangd'}
		for _, ls in ipairs(language_servers) do
			require("lspconfig")[ls].setup({
				capabilities = capabilities,
				-- you can add other fields for setting up lsp server in this table
			})
		end
		local ufo = require("ufo")
		ufo.setup()

		vim.keymap.set('n', 'zp', function()
			local winid = ufo.peekFoldedLinesUnderCursor()
			if not winid then
				-- choose one of coc.nvim and nvim lsp
				vim.lsp.buf.hover()
			end
		end)
		--opt.foldcolumn = '1'
		vim.opt.foldlevel = 99
		vim.opt.foldenable = true
	end,
}
