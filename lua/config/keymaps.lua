-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 多窗口
-- 窗口操作
vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sc", ":close<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "so", ":only<CR>", { noremap = true, silent = true })
-- 多窗口跳转
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", { noremap = true, silent = true })

--local lspconfig = require("lspconfig")
----------------------------------------------------------------------------------
--local lsp_set_keymap = require("keybindings")
--local on_attach = function(_, bufnr)
--  lsp_set_keymap.set_keymap(bufnr)
-- 编译
vim.api.nvim_set_keymap("n", "<F5>", "<cmd>make -j8<CR>", { silent = true, noremap = true })
-- 编译运行
vim.api.nvim_set_keymap("n", "<F9>", "<cmd>make run<CR>", { silent = true, noremap = true })
-- 上传到单片机
vim.api.nvim_set_keymap("n", "<F4>", "<cmd>make update<CR>", { silent = true, noremap = true })
-- clean
vim.api.nvim_set_keymap("n", "<F6>", "<cmd>make clean<CR>", { silent = true, noremap = true })
--end
--
-- lazy
vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy" })
--map("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })
--
--codeium keymaps
vim.keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })
vim.keymap.set("i", "<C-;>", function()
  return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true })
vim.keymap.set("i", "<C-,>", function()
  return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true })
vim.keymap.set("i", "<C-x>", function()
  return vim.fn["codeium#Clear"]()
end, { expr = true })
