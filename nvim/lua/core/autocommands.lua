-- core/autocommands.lua

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight on yank",
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ timeout = 200 })
    end,
})
