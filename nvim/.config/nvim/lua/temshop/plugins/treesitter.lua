return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
		"windwp/nvim-autopairs",
	},
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local treesitter = require("nvim-treesitter.configs")
		local autotag = require("nvim-ts-autotag")
		autotag.setup({
			opts = {
				enable_close = true,
			},
		})
		local autopairs = require("nvim-autopairs")
		autopairs.setup({
			config = true,
			event = "InsertEnter",

		})
		treesitter.setup({
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"gitignore",
				"html",
				"hyprlang",
				"java",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"r",
				"rnoweb",
				"rust",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			inndent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
