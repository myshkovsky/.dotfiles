return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter"
    },
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
                            notes = "%HOMEPATH%/notes",
                        },
                    },
                },
            },
        }
    end,
}
