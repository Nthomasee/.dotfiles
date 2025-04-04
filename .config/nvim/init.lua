require("config.remap")
require("config.set")
require("config.lazy")
require("custom.lsp")
require('lualine').setup()
vim.cmd[[colorscheme tokyonight]]
vim.opt.tabstop = 4       -- Устанавливает ширину табуляции на 4 пробела
vim.opt.shiftwidth = 4    -- Устанавливает ширину отступа на 4 пробела
vim.opt.expandtab = true
vim.g.zig_fmt_autosave = 0
