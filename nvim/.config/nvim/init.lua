vim.g.mapleader = " "
-- This will make space do nothing in normal mode
vim.keymap.set("n", " ", "<Nop>", { noremap = true, silent = true })
vim.g.have_nerd_font = true

vim.o.relativenumber = true
vim.o.number = true
vim.o.showmode = false
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.list = true
vim.o.listchars = "tab:» ,trail:·,nbsp:␣"

vim.o.foldlevel = 99
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.breakindent = true

vim.o.scrolloff = 20
vim.o.swapfile = false
vim.o.background = "dark"
vim.o.history = 1000

vim.o.mouse = "a"
vim.o.splitright = true
vim.o.splitbelow = true
require("config.lazy")

vim.cmd.colorscheme("monoglow")
require("telescope").load_extension("ui-select")

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y"')
vim.keymap.set("n", "<leader>p", '"+p"')
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d"')
-- stylua: ignore
vim.keymap.set("n", "rr", function() vim.diagnostic.open_float() end)
