local function setTheme(theme)
    theme = theme or "oxocarbon"
    vim.cmd.colorscheme(theme)
end

return {
    { "rebelot/kanagawa.nvim" },
    { "nyoom-engineering/oxocarbon.nvim" },
    {
        "folke/tokyonight.nvim",
        config = function()
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
            setTheme()
        end
    }
}
