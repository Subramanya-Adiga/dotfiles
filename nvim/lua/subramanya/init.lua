require("subramanya.set")
require("subramanya.remap")
require("subramanya.lazy")

vim.api.nvim_create_autocmd('TextYankPost',{
    desc = 'Highlight When Yanking Text',
    group = vim.api.nvim_create_augroup('subramanya-highlight-yank',{clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end,
})
