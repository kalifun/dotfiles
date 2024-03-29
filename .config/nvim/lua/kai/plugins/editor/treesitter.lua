return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            'JoosepAlviste/nvim-ts-context-commentstring',
        },
        build = ":TSUpdate",
        event = "BufReadPost",
        opts = {
            ensure_installed = {
                -- config filetypes
                "markdown",
                "yaml",
                "toml",
                "gitignore",
                "markdown_inline",

                -- script languages
                "bash",
                "python",
                "vim",
                "sql",

                -- web related
                "javascript",
                "html",
                "css",
                "typescript",
                "vue",
                "tsx",

                -- other languages
                "go",
                "gomod",
                "rust",

                -- other
                "comment",
                "regex",
                "vimdoc",
            },
            sync_install = false,
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            incremental_selection = {
                enable = true,
            },
            context_commentstring = {
                enable = true,
            },
        },

        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
    },
}
