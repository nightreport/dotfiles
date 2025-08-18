local opt = vim.opt

opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.scrolloff = 40
opt.swapfile = false

opt.background = 'dark'

opt.history = 1000
vim.g.rustfmt_autosave = true

vim.keymap.set('n', 'zp', function()
    local winid = require('ufo').peekFoldedLinesUnderCursor()
    if not winid then
        -- choose one of coc.nvim and nvim lsp
        vim.lsp.buf.hover()
    end
end)
--opt.foldcolumn = '1'
opt.foldlevel = 99
opt.foldenable = true
