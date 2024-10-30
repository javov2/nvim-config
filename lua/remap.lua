-- Leader definition
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>b", ":b#<CR>")


vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "JK", "<Esc>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<c-P>", require('fzf-lua').files, { desc = "Open Project Files" })
vim.keymap.set("n", "<c-S-F>", require('fzf-lua').live_grep, { desc = "Global Search" })
vim.keymap.set("v", "<c-F>", require('fzf-lua').grep_visual, { desc = "[V] Visual Search" })
vim.keymap.set("n", "<c-F>", require('fzf-lua').lgrep_curbuf, { desc = "Search in File" })
-- FzfLua LSP Go to <>
vim.keymap.set("n", "<leader>gr", require('fzf-lua').lsp_references, { desc = "Go to References" })
vim.keymap.set("n", "<leader>gi", require('fzf-lua').lsp_implementations, { desc = "Go to References" })
vim.keymap.set("n", "<leader>gd", require('fzf-lua').lsp_finder, { desc = "Go to Definitions" })



vim.keymap.set("n", "<c-n>", ":Ntree<CR>")