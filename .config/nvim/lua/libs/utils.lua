local M = {}

local vim_opt = vim.opt
function M.set_vim_opts(opts)
    for k, v in pairs(opts) do
        vim_opt[k] = v
    end
end

local keymap_set = vim.keymap.set

local function tbl_unpack(tbl, n)
    local result = {}
    for i = 1, n do
        result[i] = tbl[i]
    end
    return unpack(result)
end

function M.set_keymaps(keymaps, opts)
    for _, map in ipairs(keymaps) do
        local mode, lhs, rhs, options = tbl_unpack(map, 4)
        keymap_set(mode, lhs, rhs, vim.tbl_extend("force", options or {}, opts or {}))
    end
end

return M
