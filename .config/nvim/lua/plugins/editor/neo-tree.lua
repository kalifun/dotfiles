return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
	cmd = "Neotree",
	keys = {
		{
			"<leader>fe",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = require("libs.project").get_root() })
			end,
			desc = "Explorer NeoTree (root dir)",
		},
		{
			"<leader>fE",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
			end,
			desc = "Explorer NeoTree (cwd)",
		},
		{ "<leader>e", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
		{ "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
	},
	-- deactivate = function()
	-- 	vim.cmd([[Neotree close]])
	-- end,
	init = function()
		vim.g.neo_tree_remove_legacy_commands = 1
		vim.fn.sign_define("DiagnosticSignError",
			{ text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn",
			{ text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo",
			{ text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint",
			{ text = "", texthl = "DiagnosticSignHint" })
		if vim.fn.argc() == 1 then
			local stat = vim.loop.fs_stat(vim.fn.argv(0))
			if stat and stat.type == "directory" then
				require("neo-tree")
			end
		end
	end,
	opts = {
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = false,
			},
			bind_to_cwd = false,
			follow_current_file = true,
		},
		window = {
			mappings = {
				["<space>"] = "none",
			},
		},
	},
}
