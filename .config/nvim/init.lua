-- set vim options and keymaps
require("kai.config")

-- install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


-- plugins

local plugins = function()
    return {
        spec = {
            { import = "kai.languages" },
            { import = "kai.plugins.ui" },
            { import = "kai.plugins.theme" },
            { import = "kai.plugins.editor" },
            { import = "kai.plugins.coding" },
        },
    }
end

-- opts

local opts = function()
    return {
        defaults = {
            lazy = true, -- plugins be lazy-loaded
        },
        install = {
            colorscheme = {}
        }
    }
end

-- setup plugins and opts
require("lazy").setup(plugins(), opts())
