require("tokyonight").setup({
    style = "night",
    transparent = false,
    terminal_colors = true,
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "dark",
        floats = "dark",
    },
})

vim.cmd.colorscheme("oxocarbon")
