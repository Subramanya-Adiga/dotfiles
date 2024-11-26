return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "\\", ":Neotree position=current<CR>", desc = "NeoTree Reveal", silent = true },
	},
	opts = {
		enable_git_status = true,
		default_component_configs = {
			type = {
				enabled = true,
				required_width = 122,
			},
			last_modified = {
				enabled = true,
				required_width = 80,
			},
		},
		filesystem = {
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
	},
}
