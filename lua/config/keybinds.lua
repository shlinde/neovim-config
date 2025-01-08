-- Keybindings

-- [[ Explorer ]]
vim.keymap.set('n', '<leader>e', '<CMD>15 Lexplore<CR>', { desc = 'File Explorer' })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- [[ Finder ]]
vim.keymap.set('n', '<leader>ff', '<CMD>Telescope find_files<CR>', { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fh', '<CMD>Telescope help_tags<CR>', { desc = 'Find Files' })
