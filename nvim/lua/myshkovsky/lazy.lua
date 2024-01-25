local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

require('lazy').setup({
    "rebelot/kanagawa.nvim",
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {},
                    ["core.keybinds"] = {
                        config = {
                            neorg_leader = " "
                        }
                    },
                    ["core.integrations.treesitter"] = {},
                    ["core.concealer"] = {
                        config = {
                            folds = false
                        }
                    },
                    ["core.dirman"] = {
                        config = {
                            workspaces = {
                                notes = "C:/Users/myshkovsky/notes",
                            },
                        },
                    },
                },
            }
        end,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {}
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { { 'nvim-tree/nvim-web-devicons', lazy = true } },
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000 -- Ensure it loads first
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    'theprimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    'windwp/nvim-ts-autotag',
})
