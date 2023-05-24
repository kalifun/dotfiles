return {
    "xiyaowong/transparent.nvim",
    event = "VimEnter",
    config = function()
        require("transparent").setup({
            extra_groups = {
                "NormalFloat",    -- plugins which have float panel such as Lazy, Mason, LspInfo
                "NeoTreeNormal", -- NeoTree
                "NeoTreeNormalNC",
            },
        })
    end,
}
