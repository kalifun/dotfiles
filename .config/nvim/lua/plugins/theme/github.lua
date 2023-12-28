return {
    'projekt0n/github-nvim-theme',
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function ()
        require('github-theme').setup({
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

        -- vim.cmd('colorscheme github_dark')
    end,
}
