return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			  default_file_explorer = false,
		})
		vim.keymap.set('n', '<leader>o', require("oil").toggle_float)
	end,
}
