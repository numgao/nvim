-- 插件管理文件
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- 主题配置
    use 'folke/tokyonight.nvim'
    use 'Mofiqul/vscode.nvim'
    --use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use {'akinsho/bufferline.nvim', tag = "v2.*"}
    --, requires = 'nvim-tree/nvim-web-devicons'}

    use { 'nvim-tree/nvim-web-devicons'}


    use { 'nvim-tree/nvim-tree.lua' }
    -- ,
    --    requires = {
    --        'nvim-tree/nvim-web-devicons', -- optional, for file icons
    -- }
    --  tag = 'nightly' -- optional, updated every week. (see issue #1193)
    -- }
    use {
        'nvim-lualine/lualine.nvim'
        --,
        --requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        --requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    --use {'glepnir/dashboard-nvim'}
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
            }
        end,
        -- requires = {'nvim-tree/nvim-web-devicons'}
    }
    use {"folke/which-key.nvim"}
    use {"akinsho/toggleterm.nvim", tag = 'v2.*'}
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} , 
            --    {
            --    'nvim-treesitter/nvim-treesitter',
            --    run = function()
            --        require('nvim-treesitter.install').update({ with_sync = true })
            --    end,
            --}
        }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        --run = function()
        --    require('nvim-treesitter.install').update({ with_sync = true })
        --end,
    }

    use { "nvim-telescope/telescope-file-browser.nvim" }
    --    use {'rmagatti/auto-session'}
    use {"williamboman/mason.nvim"}
    --    use {"neovim/nvim-lspconfig"}
    -- nvim-cmp
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    -- vsnip
    use {'hrsh7th/cmp-vsnip'}
    use {'hrsh7th/vim-vsnip'}
    use {'rafamadriz/friendly-snippets'}
    -- lspkind
    use {'onsails/lspkind-nvim'}
    -- lspsaga
    -- use {'glepnir/lspsaga.nvim'}
    use ({
        'nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
        config = function()
            require('lspsaga').setup({})
        end,
    })

    use {'simrat39/symbols-outline.nvim'}

    -- dap
    use {'mfussenegger/nvim-dap'}
    use {"rcarriga/nvim-dap-ui"}
    use {"theHamsta/nvim-dap-virtual-text" }
    --    requires = {
    -- "nvim-treesitter/nvim-treesitter" , 
    -- "mfussenegger/nvim-dap"}}
    use {"sakhnik/nvim-gdb", run = "./install.sh"}

    --git
    use {'lewis6991/gitsigns.nvim'}
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    --    use { "williamboman/nvim-lsp-installer", "neovim/nvim-lspconfig" }
    use { "neovim/nvim-lspconfig" }

    use { "nvim-neotest/nvim-nio"}
    use { 'jedrzejboczar/nvim-dap-cortex-debug' }
end)

