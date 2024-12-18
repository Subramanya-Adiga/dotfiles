return {
	"theprimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle Harpoon List" })

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add Current Buffer To Harpoon List" })

		vim.keymap.set("n", "<C-1>", function()
			harpoon:list():select(1)
		end, { desc = "Jump To Harpoon List 1" })

		vim.keymap.set("n", "<C-2>", function()
			harpoon:list():select(2)
		end, { desc = "Jump To Harpoon List 2" })

		vim.keymap.set("n", "<C-3>", function()
			harpoon:list():select(3)
		end, { desc = "Jump To Harpoon List 3" })

		vim.keymap.set("n", "<C-4>", function()
			harpoon:list():select(4)
		end, { desc = "Jump To Harpoon List 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-S-P>", function()
			harpoon:list():prev()
		end, { desc = "Toggle Previous Buffer In Harpoon List" })
		vim.keymap.set("n", "<C-S-N>", function()
			harpoon:list():next()
		end, { desc = "Toggle Next Buffer In Harpoon List" })
	end,
}
