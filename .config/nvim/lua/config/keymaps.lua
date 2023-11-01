return {
    -- lazy.nvim
    { "n",          "<leader>l",    "<cmd>:Lazy<cr>",                   { desc = "Lazy" } },

    -- better up/down
    { "n",          "j",            "v:count == 0 ? 'gj' : 'j'",        { expr = true, silent = true } },
    { "n",          "k",            "v:count == 0 ? 'gk' : 'k'",        { expr = true, silent = true } },

    -- window navigation
    { "n",          "<C-h>",        "<C-w>h",                           { desc = "Go to left window" } },
    { "n",          "<C-j>",        "<C-w>j",                           { desc = "Go to lower window" } },
    { "n",          "<C-k>",        "<C-w>k",                           { desc = "Go to upper window" } },
    { "n",          "<C-l>",        "<C-w>l",                           { desc = "Go to right window" } },

    -- window management
    { "n",          "<leader>wd",   "<C-W>c",                           { desc = "delete-window" } },
    { "n",          "<l eeader>wj", "<C-W>s",                           { desc = "split-window-below" } },
    { "n",          "<leader>wl",   "<C-W>v",                           { desc = "split-window-right" } },

    -- buffers navigation
    { "n",          "<leader>bd",   "<cmd>:bdelete<cr>",                { desc = "Delete Buffer" } },
    { "n",          "<leader>b]",   "<cmd>:BufferLineCycleNext<CR>",    { desc = "Next Buffer" } },
    { "n",          "<leader>bb",   "<cmd>:e #<cr>",                    { desc = "Switch to Other Buffer" } },
    { "n",          "<leader>b[",   "<cmd>:BufferLineCyclePrev<CR>",    { desc = "Previous Buffer" } },

    -- Clear search with <esc>
    { { "i", "n" }, "<esc>",        "<cmd>noh<cr><esc>",                { desc = "Escape and clear hlsearch" } },

    -- Clear search and redraw
    { "n",          "<leader>r",    "<cmd>noh<cr><cmd>redraw<cr><c-l>", { desc = "Redraw and clear hlsearch" } },

    -- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
    { "n", "n", "'Nn'[v:searchforward]", {
        expr = true,
        desc = "Next search result"
    } },
    { "x", "n", "'Nn'[v:searchforward]", {
        expr = true,
        desc = "Next search result"
    } },
    { "o", "n", "'Nn'[v:searchforward]", {
        expr = true,
        desc = "Next search result"
    } },
    { "n", "N", "'nN'[v:searchforward]", {
        expr = true,
        desc = "Prev search result"
    } },
    { "x", "N", "'nN'[v:searchforward]", {
        expr = true,
        desc = "Prev search result"
    } },
    { "o", "N", "'nN'[v:searchforward]", {
        expr = true,
        desc = "Prev search result"
    } },

    -- better indenting
    { "v",                    "<",          "<gv" },
    { "v",                    ">",          ">gv" },

    -- quit
    { "n",                    "<leader>qq", "<cmd>qa<cr>",                 { desc = "Quit all" } },


    -- Move Lines
    { "n",                    "<A-j>",      "<cmd>m .+1<cr>==",            { desc = "Move down" } },
    { "n",                    "<A-k>",      "<cmd>m .-2<cr>==",            { desc = "Move up" } },
    { "i",                    "<A-j>",      "<esc><cmd>m .+1<cr>==gi",     { desc = "Move down" } },
    { "i",                    "<A-k>",      "<esc><cmd>m .-2<cr>==gi",     { desc = "Move up" } },
    { "v",                    "<A-j>",      ":m '>+1<cr>gv=gv",            { desc = "Move down" } },
    { "v",                    "<A-k>",      ":m '<-2<cr>gv=gv",            { desc = "Move up" } },


    -- Resize window using <ctrl> arrow keys
    { "n",                    "<C-Up>",     "<cmd>resize +2<cr>",          { desc = "Increase window height" } },
    { "n",                    "<C-Down>",   "<cmd>resize -2<cr>",          { desc = "Decrease window height" } },
    { "n",                    "<C-Left>",   "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" } },
    { "n",                    "<C-Right>",  "<cmd>vertical resize +2<cr>", { desc = "Increase window width" } },


    -- save file
    { { "i", "v", "n", "s" }, "<C-s>",      "<cmd>w<cr><esc>",             { desc = "Save file" } },


    -- new file
    { "n",                    "<leader>fn", "<cmd>enew<cr>",               { desc = "New File" } },
}
