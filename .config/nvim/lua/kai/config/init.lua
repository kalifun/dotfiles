local utils = require("kai.libs.utils")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

utils.set_vim_opts(require("kai.config.options"))
utils.set_keymaps(require("kai.config.keymaps"))