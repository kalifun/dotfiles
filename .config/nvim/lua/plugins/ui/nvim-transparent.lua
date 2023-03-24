return {
    "xiyaowong/nvim-transparent",
    event = "VimEnter",
    config = function()
        require("transparent").setup({})
    end,
}
