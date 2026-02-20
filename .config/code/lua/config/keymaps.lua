-- Global or local keymaps are defined here.
vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Floating terminal keymaps
vim.keymap.set({"n", "t"}, "<leader>tt", "<cmd>FloatermToggle<CR>")

-- Telescope keymaps
local tele = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tele.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', tele.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', tele.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', tele.help_tags, { desc = 'Telescope help tags' })

-- Nvim Tree keymap
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>" )



