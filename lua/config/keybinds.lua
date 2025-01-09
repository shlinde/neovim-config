-- Keybindings

-- [[ Utilities ]]
local nmap_leader = function(suffix, rhs, desc, opts)
  opts = opts or {}
  opts.desc = desc
  vim.keymap.set('n', '<leader>' .. suffix, rhs, opts)
end

-- [[ Defaults ]]
vim.keymap.set('n', '<C-æ>', '<C-]>')

-- [[ Explorer ]]
nmap_leader('e', '<cmd>Oil<cr>', 'Open Parent Directory')
vim.keymap.set("n", "-", "<cmd>lua require('oil').open_float('.')<cr>", { desc = "Open parent directory" })

-- [[ Finder ]]
vim.keymap.set('n', '<leader>ff', '<CMD>Telescope find_files<CR>', { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fh', '<CMD>Telescope help_tags<CR>', { desc = 'Find Files' })

-- [[ Overseer ]]
nmap_leader('oo', '<cmd>OverseerRun<cr>', 'Overseer Run')

