return {
	"goolord/alpha-nvim",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		local alpha = require("alpha")
		local startify = require 'alpha.themes.startify'

		startify.section.header.val = {
			[[ __                               ]],
			[[/\ \                              ]],
			[[\ \ \____    ___   ____     ___   ]],
			[[ \ \ '__`\  / __`\/\_ ,`\  / __`\ ]],
			[[  \ \ \L\ \/\ \L\ \/_/  /_/\ \L\ \]],
			[[   \ \_,__/\ \____/ /\____\ \____/]],
			[[    \/___/  \/___/  \/____/\/___/ ]],
		}
		startify.opts = {
			position = "center"
		}
		startify.section.bottom_buttons.val = {
			startify.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			startify.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
		}
		alpha.setup(startify.config)
	end,
}
