-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.maplocalleader = "\\"

require("lazy").setup({
    spec = {
        { import = "plugins" },
        {'tpope/vim-fugitive'},
        { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
        {'nvim-lua/plenary.nvim'},
        {
            'nvim-lualine/lualine.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons' }
        },
        {'mbbill/undotree'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {
            "lervag/vimtex",
            lazy = false,     -- we don't want to lazy load VimTeX
            -- tag = "v2.15", -- uncomment to pin to a specific release
            init = function()
                -- VimTeX configuration goes here, e.g.
                vim.g.vimtex_view_method = "zathura"
            end
        },
        {
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
                        hl.LineNr = { fg = "#b6bcd4" }        -- Обычные номера строк
                        hl.CursorLineNr = { fg = "#b6bcd4" }  -- Номер текущей строки
                        hl.LineNrAbove = { fg = "#b6bcd4" }
                        hl.LineNrBelow = { fg = "#b6bcd4" }
                    end,
                })
                vim.cmd([[colorscheme tokyonight]])
            end,
        }
    }
})
