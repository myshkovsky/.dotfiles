local colors = require("onedarkpro.helpers").get_preloaded_colors()

require('onedarkpro').setup({
    colors = {
        --onedark = { bg = "#15171c" }
    },
    highlights = {
        -- .go
        ['@variable.go'] = { fg = colors.white },
        ['@parameter.go'] = { fg = colors.white },
        -- .lua
        ['@lsp.type.parameter.lua'] = { fg = colors.white },
        ['@lsp.type.keyword.lua'] = {},
        -- .js
        ['@property.javascript'] = { fg = colors.white },
        ['@variable.javascript'] = { fg = colors.white },
        ['@punctuation.bracket.javascript'] = { fg = '#179fff' },
        ['@tag.attribute.javascript'] = { fg = colors.orange },
        -- .jsx
        ['@lsp.type.parameter.javascriptreact'] = { fg = colors.white },
        ['@lsp.typemod.parameter.declaration.javascriptreact'] = { fg = colors.red },
        ['@lsp.typemod.variable.readonly.javascriptreact'] = { fg = colors.white },

    },
})

vim.cmd.colorscheme("onedark")
