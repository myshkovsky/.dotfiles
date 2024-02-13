--[[
local colors = require("onedarkpro.helpers").get_preloaded_colors()

require('onedarkpro').setup({
    colors = {
        onedark = { bg = "#1e222a" }
    },
    highlights = {
        ['@variable'] = { fg = colors.white },
        ['@parameter'] = { fg = colors.white },
        ['@property'] = { fg = colors.cyan },
        -- Golang
        ['@variable.go'] = { link = '@variable' },
        ['@parameter.go'] = { link = '@parameter' },
        ['@variable.member.go'] = { link = '@property' },
        -- Lua
        ['@lsp.type.property.lua'] = { link = '@variable.member' },
        ['@keyword.operator.lua'] = { link = '@keyword.lua' },
    },
})
]]--

vim.cmd.colorscheme("oxocarbon")
