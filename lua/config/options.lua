vim.g.mapleader = " "

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.undofile = true

vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.clipboard = "unnamedplus"

vim.opt.signcolumn = "auto" -- this shows the ugly column on the left; used by lsp and such

vim.opt.wrap = false

-- spell checking for markdown and text
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text" },
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "de_ch,en_us"
    end,
})


