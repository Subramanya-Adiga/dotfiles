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
		{ "<leader>gf", ":Neotree git_status<CR>", desc = "NeoTree Git Status", silent = true },
	},
	opts = {
		default_component_configs = {
			indent = {
				with_expanders = true,
			},
		},
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = false,
			},
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
		git_status = {
			window = {
				position = "float",
			},
		},
	},
}
