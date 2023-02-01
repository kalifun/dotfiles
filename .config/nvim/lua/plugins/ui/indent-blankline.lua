return {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPost",
    opts = {
        -- char = "▏",
        char = "│",
        filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
        show_trailing_blankline_indent = false,
        show_current_context = true,
        show_current_context_start = true,
        space_char_blankline = " ",
        show_end_of_line = true,
    },
}
