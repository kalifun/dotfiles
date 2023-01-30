return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            always_show_bufferline = false,
            show_tab_indicators = false,
            show_close_icon = false,
            offset = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    highlight = "Directory",
                    text_align = "left",
                },
            }
        },
    },
}
