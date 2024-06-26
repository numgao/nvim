-- 快捷键配置
-- 设置 leader key 和 localleader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--my setting
--open the term
--  vim.api.nvim_set_keymap("n", "<A-=>", ":split term://zsh<CR>", {noremap = true, silent = true})
--vim.api.nvim_set_keymap("t", "<A-=>", "<C-\\><C-n>:bdelete! %<CR>", , {noremap = true, silent = true})

-- 翻页操作
vim.api.nvim_set_keymap("n", "<C-f>", "10jzz", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-b>", "10kzz", {noremap = true, silent = true})

-- 多窗口
-- 窗口操作
vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sc", ":close<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "so", ":only<CR>", {noremap = true, silent = true})
-- 多窗口跳转
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", {noremap = true, silent = true})

-- 其他有用的绑定
-- 使用 <C-u> 将光标所在单词转化为全大写
vim.api.nvim_set_keymap("i", "<C-u>", "<esc>viwUwa", {noremap = true, silent = true})
-- 使用 <C-l> 将光标所在单词转化为全小写
vim.api.nvim_set_keymap("i", "<C-l>", "<esc>viwuwa", {noremap = true, silent = true})
-- 快速打开vimrc文件
vim.api.nvim_set_keymap("n", "<leader>ee", ":vs $MYVIMRC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>ss", ":source $MYVIMRC<CR>", {noremap = true, silent = true})
-- 删除当前光标所在单词
vim.api.nvim_set_keymap("n", "dw", "diw", {noremap = true, silent = true})
-- 可视模式下可以快速移动缩进多行文本
vim.api.nvim_set_keymap("v", ">>", ">>gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<<", "<<gv", {noremap = true, silent = true})

-- 定义 symbols-outline 快捷键
vim.api.nvim_set_keymap("n", "<leader>so", "<cmd>SymbolsOutline<CR>", {silent = true, noremap = true})

-- My defined keymaps
--
-- save file
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", {noremap = true, silent = true})
-- source %
vim.api.nvim_set_keymap("n", "<leader>%", ":<C-u>source %<CR>", {noremap = true, silent = true})
-- open kebindings.lua
vim.api.nvim_set_keymap("n", "<leader>ek", ":e /Users/gao/.config/nvim/lua/keybindings.lua<CR>", {noremap = true, silent = true})
-- LspStart
vim.api.nvim_set_keymap("n", "<leader>ls", ":LspStart<CR>", {noremap = true, silent = true})
-- open init.lua
vim.api.nvim_set_keymap("n", "<leader>ei", ":e /Users/gao/.config/nvim/init.lua<CR>", {noremap = true, silent = true})
-- open plugins.lua
vim.api.nvim_set_keymap("n", "<leader>ep", ":e /Users/gao/.config/nvim/lua/plugins.lua<CR>", {noremap = true, silent = true})

-- setup mapping to call :LazyGit
vim.api.nvim_set_keymap("n", "<leader>lg", ":LLazyGit<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader>q", ":wq<CR>", {noremap = true, silent = true})

-- end of my define     
--
-- lsp 快捷键定义
local lsp_keybinds = {}

lsp_keybinds.set_keymap = function (bufnr)
    print("set lsp keymap")
    -- 跳转到声明
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>Lspsaga peek_definition<CR>", {silent = true, noremap = true})
    -- 跳转到定义
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", {silent = true, noremap = true})
    -- 显示注释文档
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>Lspsaga lsp_finder<CR>", {silent = true, noremap = true})
    -- 跳转到实现
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {silent = true, noremap = true})
    -- 跳转到引用位置
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>Lspsaga rename<CR>", {silent = true, noremap = true})
    -- 以浮窗形式显示错误
    vim.api.nvim_buf_set_keymap(bufnr, "n", "go", "<cmd>lua vim.diagnostic.open_float()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", {silent = true, noremap = true})

    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", {silent = true, noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, "v", "<leader>ca", "<cmd>Lspsaga code_action<CR>", {silent = true, noremap = true})
    --    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", {silent = true, noremap = true})
    -- dap
    vim.keymap.set({"i", "n", "v"}, "<F7>", "<cmd>lua require'dap'.continue()<CR>", {silent = true, noremap = true, buffer = bufnr})
    vim.keymap.set({"i", "n", "v"}, "<F8>", "<cmd>lua require'dap'.step_over()<CR>", {silent = true, noremap = true, buffer = bufnr})
    vim.keymap.set({"i", "n", "v"}, "<F9>", "<cmd>lua require'dap'.step_into()<CR>", {silent = true, noremap = true, buffer = bufnr})
    vim.keymap.set({"i", "n", "v"}, "<F10>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {silent = true, noremap = true, buffer = bufnr})
end

vim.cmd[[imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']]
vim.cmd[[smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']]
vim.cmd[[imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']]
vim.cmd[[smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']]

-- dap keymaps
return lsp_keybinds
