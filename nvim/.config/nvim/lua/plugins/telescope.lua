return {
	"nvim-telescope/telescope.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-mini/mini.icons",
		"nvim-telescope/telescope-ui-select.nvim",
	},

	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
		{ "<leader>fe", "<cmd>Telescope buffers<cr>" },
		{ "<leader>fl", "<cmd>Telescope live_grep<cr>" },
		{ "<leader>fa", "<cmd>Telescope builtin<cr>" },
		{ "<leader>fp", "<cmd>Telescope planets<cr>" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>" },
		{ "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>" },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				-- Default configuration for telescope goes here:
				-- config_key = value,
				mappings = {
					n = {
						["<c-d>"] = require("telescope.actions").delete_buffer,
					}, -- n
					i = {
						["<c-d>"] = require("telescope.actions").delete_buffer,
					}, -- i
				}, -- mappings
			}, -- defaults
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({
						-- even more opts
					}),
				},
			}, -- extensions
		})
	end,
}
