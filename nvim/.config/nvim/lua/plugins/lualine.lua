return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			component_separators = "|",
			section_separators = "",
		},
		sections = {
			lualine_c = { "buffers" },
			lualine_x = { "encoding", "filetype" },
			lualine_y = {},
		},
	},
}
