-- this will return a function that calls telescope.
-- cwd will default to lazyvim.get_root
-- for `files`, git_files or find_files will be chosen depending on .git
local telescope = function(builtin, opts)
    local params = { builtin = builtin, opts = opts }
    return function()
        builtin = params.builtin
        opts = params.opts
        opts = vim.tbl_deep_extend("force", { cwd = require("kai.libs.utils").get_root() }, opts or {})
        if builtin == "files" then
            if vim.loop.fs_stat((opts.cwd or vim.loop.cwd()) .. "/.git") then
                opts.show_untracked = true
                builtin = "git_files"
            else
                builtin = "find_files"
            end
        end
        require("telescope.builtin")[builtin](opts)
    end
end

return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    version = false, -- telescope did only one release, so use HEAD for now
    keys = {
        { "<leader>,",       "<cmd>Telescope buffers show_all_buffers=true<cr>",  desc = "Switch Buffer" },
        { "<leader>/",       telescope("live_grep"),                              desc = "Find in Files (Grep)" },
        { "<leader>:",       "<cmd>Telescope command_history<cr>",                desc = "Command History" },
        { "<leader><space>", telescope("files"),                                  desc = "Find Files (root dir)" },
        -- find
        { "<leader>fb",      "<cmd>Telescope buffers<cr>",                        desc = "Buffers" },
        { "<leader>ff",      telescope("files"),                                  desc = "Find Files (root dir)" },
        { "<leader>fF",      telescope("files", { cwd = false }),                 desc = "Find Files (cwd)" },
        { "<leader>fr",      "<cmd>Telescope oldfiles<cr>",                       desc = "Recent" },
        -- git
        { "<leader>gc",      "<cmd>Telescope git_commits<CR>",                    desc = "commits" },
        { "<leader>gs",      "<cmd>Telescope git_status<CR>",                     desc = "status" },
        -- search
        { "<leader>sa",      "<cmd>Telescope autocommands<cr>",                   desc = "Auto Commands" },
        { "<leader>sb",      "<cmd>Telescope current_buffer_fuzzy_find<cr>",      desc = "Buffer" },
        { "<leader>sc",      "<cmd>Telescope command_history<cr>",                desc = "Command History" },
        { "<leader>sC",      "<cmd>Telescope commands<cr>",                       desc = "Commands" },
        { "<leader>sd",      "<cmd>Telescope diagnostics<cr>",                    desc = "Diagnostics" },
        { "<leader>sg",      telescope("live_grep"),                              desc = "Grep (root dir)" },
        { "<leader>sG",      telescope("live_grep", { cwd = false }),             desc = "Grep (cwd)" },
        { "<leader>sh",      "<cmd>Telescope help_tags<cr>",                      desc = "Help Pages" },
        { "<leader>sH",      "<cmd>Telescope highlights<cr>",                     desc = "Search Highlight Groups" },
        { "<leader>sk",      "<cmd>Telescope keymaps<cr>",                        desc = "Key Maps" },
        { "<leader>sM",      "<cmd>Telescope man_pages<cr>",                      desc = "Man Pages" },
        { "<leader>sm",      "<cmd>Telescope marks<cr>",                          desc = "Jump to Mark" },
        { "<leader>so",      "<cmd>Telescope vim_options<cr>",                    desc = "Options" },
        { "<leader>sR",      "<cmd>Telescope resume<cr>",                         desc = "Resume" },
        { "<leader>sw",      telescope("grep_string"),                            desc = "Word (root dir)" },
        { "<leader>sW",      telescope("grep_string", { cwd = false }),           desc = "Word (cwd)" },
        { "<leader>uC",      telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
        {
            "<leader>ss",
            telescope("lsp_document_symbols", {
                symbols = {
                    "Class",
                    "Function",
                    "Method",
                    "Constructor",
                    "Interface",
                    "Module",
                    "Struct",
                    "Trait",
                    "Field",
                    "Property",
                },
            }),
            desc = "Goto Symbol",
        },
        {
            "<leader>sS",
            telescope("lsp_workspace_symbols", {
                symbols = {
                    "Class",
                    "Function",
                    "Method",
                    "Constructor",
                    "Interface",
                    "Module",
                    "Struct",
                    "Trait",
                    "Field",
                    "Property",
                },
            }),
            desc = "Goto Symbol (Workspace)",
        },
    },
}
