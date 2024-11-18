vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Netrw" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move Focus To Left Window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move Focus To Right Window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move Focus To Lower Window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move Focus To Upper Window" })

vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open Diagnostic [Q]uickfix List" })

vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
