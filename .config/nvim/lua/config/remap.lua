vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>dd", "\"_dd")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>zx", ":normal!\"_")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>gs", vim.cmd.Git) --fugitive

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle) --undotree

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.api.nvim_create_user_command('Q', 'quit', { bang = true })
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Advanced block closing mappings
-- vim.keymap.set('i', '{<CR>', '{<CR>}<ESC>O')
-- vim.keymap.set('i', '{;<CR>', '{<CR>};<ESC>O')
