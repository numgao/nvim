local lspconfig = require('lspconfig')
--------------------------------------------------------------------------------
local lsp_set_keymap = require("keybindings")
local on_attach = function(_, bufnr)
    lsp_set_keymap.set_keymap(bufnr)
    -- 编译
--    vim.api.nvim_buf_set_keymap(bufnr, "n", "<F5>", "<cmd>make<CR>", {silent = true, noremap = true})
--    -- 编译运行
--    vim.api.nvim_buf_set_keymap(bufnr, "n", "<F9>", "<cmd>make run<CR>", {silent = true, noremap = true})
--    -- 上传到单片机
--    vim.api.nvim_buf_set_keymap(bufnr, "n", "<F4>", "<cmd>make update<CR>", {silent = true, noremap = true})
--    -- clean
--    vim.api.nvim_buf_set_keymap(bufnr, "n", "<F6>", "<cmd>make clean<CR>", {silent = true, noremap = true})
end
--------------------------------------------------------------------------------
--lspconfig.ccls.setup {
--    on_attach = on_attach,
--    init_options = {
--        cache = {
--            directory = ".ccls-cache";
--        };
--    }
--
--}
--------------------------------------------------------------------------------
lspconfig.clangd.setup {
    on_attach = on_attach,
    init_options = {
        cache = {
            directory = ".clang-cache";
        };
    }
}
--------------------------------------------------------------------------------
