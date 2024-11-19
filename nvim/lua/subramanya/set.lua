vim.g.mapleader = " "

vim.g.mapleaderlocal = " "

vim.opt.showmode = false

vim.g.have_nerd_font = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.breakindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10

vim.opt.colorcolumn = "80"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.signcolumn = "yes"
vim.opt.cursorline = true

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"

if vim.uv.os_uname().sysname == "Windows_NT" then
	vim.g.undotree_DiffCommand = "FC"
end
