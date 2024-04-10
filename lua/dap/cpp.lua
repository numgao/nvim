local dap = require("dap")

--dap.adapters.cppdbg = {
--    id = "cppdbg",
--    type = 'executable',
--    command = "/Users/gao/.local/share/nvim/mason/bin/OpenDebugAD7",
--}
--command = "/home/gao/.local/share/nvim/mason/bin/OpenDebugAD7",
-- }

--    --   options = {
--    --       detached = false
--    --   }
--}
--
----------------------------------------------------
--dap.adapters.cpp= {
--    id = "ccp",
--    type = 'executable',
--    command = "/Users/gao/.local/share/nvim/mason/bin/codelldb",
--}
--
--------------------------------------------------
--dap.adapters.codelldb = {
--    type = 'server',
--    host = '127.0.0.1',
--    port = '13000', 
--    --port = "${port}",
--    executable = {
--        command = '/Users/gao/lang/Driver/codelldb-aarch64-darwin/extension/adapter/codelldb',
--        args = {"--port", "${port}"},
--        detached = false,
--    }
--}

dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb',
    name = 'lldb'
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        --type = "cppdbg",
        --type = "codelldb",
        type = 'lldb',
        request = "launch",

        --MIMode = "lldb",
        --miDebuggerServerAddress = 'localhost:13000',
        --miDebuggerPath = "/usr/bin//lldb", 
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,

        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        --stopAtEntry = true,
        terminal = 'intergrated',
        args = {},
        --MIMode = "gdb",
        --breakpointers = {
        --    exception = {
        --        cpp_throw = "Y",
        --        cpp_catch = "N"
        --    }
        --}
    },
    --    {
    --        name = 'Attach to gdbserver :1234',
    --        type = 'cppdbg',
    --        request = 'launch',
    --        MIMode = 'lldb',
    --        miDebuggerServerAddress = 'localhost:1234',
    --        --miDebuggerPath = '/usr/bin/gdb',
    --        miDebuggerPath = '/usr/bin/lldb',
    --        cwd = '${workspaceFolder}',
    --        program = function()
    --            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --        end,
    --    },
}
dap.configurations.c = dap.configurations.cpp
