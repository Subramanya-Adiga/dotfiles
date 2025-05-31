return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"c",
			"cpp",
			"cmake",
			"rust",
			"toml",
			"json",
			"lua",
			"yaml",
			"zig",
			"odin",
			"bash",
			"css",
			"jsonc",
			"csv",
			"ini",
			"pascal",
			"vimdoc",
			"luadoc",
			"csv",
			"diff",
			"doxygen",
			"make",
			"slint",
			"nu",
			"hyprlang",
			"powershell",
		},
		auto_install = true,
		sync_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "markdown" },
		},
		indent = { enable = true },
	},
	config = function()
		local install_config = require("nvim-treesitter.install")
		install_config.prefer_git = false
		install_config.compilers = { "gcc" }
	end,
}
