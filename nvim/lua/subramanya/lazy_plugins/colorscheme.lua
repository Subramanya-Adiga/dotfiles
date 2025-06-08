function ColorMyPenciles(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"folke/tokyonight.nvim",
		opts = {
			style = "storm",
			-- transparent = false,
			terminal_colors = true,
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
				sidebars = "dark",
				floats = "dark",
			},
		},
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			variant = "moon",
			styles = {
				italic = false,
			},
		},
	},
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"uloco/bluloco.nvim",
		dependencies = {
			"rktjmp/lush.nvim",
		},
	},
	{
		"rmehri01/onenord.nvim",
	},
}
