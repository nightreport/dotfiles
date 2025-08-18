return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "fxn/vim-monochrome" },
	{
		"hiphish/rainbow-delimiters.nvim",
		config = function()
			require("rainbow-delimiters.setup").setup({
				highlight = {
					"RainbowDelimiterRed",
					"RainbowDelimiterGreen",
					"RainbowDelimiterYellow",
					"RainbowDelimiterCyan",
					"RainbowDelimiterBlue",
					"RainbowDelimiterOrange",
					"RainbowDelimiterViolet",
				},
			})
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			vim.opt.background = "dark"
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
}
