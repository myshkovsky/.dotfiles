require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "javascript",
        "typescript",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "go",
        "gomod",
        "regex",
        "markdown",
        "markdown_inline",
        "bash",
        "norg"
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
