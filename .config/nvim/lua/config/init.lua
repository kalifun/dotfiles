-- set leader 
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local utils = require("libs.utils")

-- Load vim configuration
utils.set_vim_opts(require("config.options"))

-- Load the general shortcut keys
utils.set_keymaps(require("config.keymaps"))