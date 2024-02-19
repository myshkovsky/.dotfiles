return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter"
    },
    lazy = true,
    ft = "norg",
    cmd = "Neorg",
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {},
                ["core.integrations.treesitter"] = {},
                ["core.keybinds"] = {
                    config = {
                        neorg_leader = " "
                    }
                },
                ["core.concealer"] = {
                    config = {
                        folds = false
                    }
                },
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                            notes = "%HOMEPATH%/notes",
                        },
                    },
                },
            },
        }
    end,
}
