return { 
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  opts = {
    pickers = {
      help_tags = {
        mappings = {
          i = {
            ['<CR>'] = 'file_vsplit',
          },
        },
      },
    },
  },
}
