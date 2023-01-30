vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect"
opt.mouse = "a" -- Enable mouse mode
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 4 -- Number of spaces tabs count for
opt.smartindent = true -- Insert indents automatically
opt.shiftwidth = 4 -- Size of an indent
opt.shortmess:append { W = true, I = true, c = true }
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.showmode = false
opt.cursorline = true
opt.termguicolors = true -- support true color
opt.undofile = true
opt.expandtab = true
opt.signcolumn = "yes"
opt.tabstop = 4

-- view options
opt.splitbelow = true
opt.splitright = true
