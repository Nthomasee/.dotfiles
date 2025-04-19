return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "storm",
            light_style = "day",
            transparent = false,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
                sidebars = "dark",
                floats = "dark",
            },
            on_highlights = function(hl, colors)
                hl.LineNr = { fg = "#9a4bf4" }
                hl.CursorLineNr = { fg = "#9a4bf4" }
                hl.LineNrAbove = { fg = "#7a7a7a" }
                hl.LineNrBelow = { fg = "#7a7a7a" }
            end,
        })
        vim.cmd([[colorscheme tokyonight]])
    end,
}

