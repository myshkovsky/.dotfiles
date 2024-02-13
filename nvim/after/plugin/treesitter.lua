require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        -- Languages
        "javascript",
        "typescript",
        "lua",
        "query",
        "go",
        "gomod",
        "python",
        -- Web
        "css",
        "scss",
        "svelte",
        "tsx",
        -- Tools
        "regex",
        "bash",
        -- Vim & notes
        "vim",
        "vimdoc",
        "norg",
        "markdown",
        "markdown_inline"
    },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = false,
    },
    indent = {
        enable = true,
    },
}
