return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "palenight",
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_c = { "buffers", },
				lualine_x = { "encoding", "filetype" },
				lualine_y = {},
			},
		})
	end,
}
