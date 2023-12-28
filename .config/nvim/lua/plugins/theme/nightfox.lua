return {
    "EdenEast/nightfox.nvim",
    config = function ()
        require('nightfox').setup({
            options = {
                transparent = true,    -- Disable setting background
                styles = {             -- Style to be applied to different syntax groups
                    comments = "italic", -- Value is any valid attr-list value `:help attr-list`
                    conditionals = "NONE",
                    constants = "NONE",
                    functions = "NONE",
                    keywords = "italic",
                    numbers = "NONE",
                    operators = "NONE",
                    strings = "NONE",
                    types = "bold",
                    variables = "NONE",
                },
            },
        })
        -- setup must be called before loading
        vim.cmd("colorscheme nightfox")
    end
}
