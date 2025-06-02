return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "-" },
			topdelete = { text = "‾" },
			chanagedelete = { text = "~" },
		},
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				opts.desc = "Git: " .. opts.desc
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map("n", "]c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, { desc = "Jump to next git [C]hange" })

			map("n", "[c", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, { desc = "Jump to previous [C]hange" })

			-- Actions
			-- visual mode
			map("v", "<leader>hs", function()
				gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Stage Hunk" })
			map("v", "<leader>hr", function()
				gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "Reset Hunk" })
			-- normal mode
			map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "[S]tage hunk" })
			map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "[R]eset hunk" })
			map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "[S]tage buffer" })
			map("n", "<leader>hu", gitsigns.stage_hunk, { desc = "[U]ndo stage hunk" })
			map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "[R]eset buffer" })
			map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "[P]review hunk" })
			map("n", "<leader>hb", gitsigns.blame_line, { desc = "[B]lame line" })
			map("n", "<leader>hd", gitsigns.diffthis, { desc = "[D]iff against index" })
			map("n", "<leader>hD", function()
				gitsigns.diffthis("@")
			end, { desc = "[D]iff against last commit" })
			-- Toggles
			map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "[T]oggle Show [B]lame line" })
			map("n", "<leader>tD", gitsigns.preview_hunk_inline, { desc = "[T]oggle Show [D]eleted" })
		end,
	},
}
