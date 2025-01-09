-- Neovim Editor Options

-- [[ General ]]
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- [[ UI Options ]]
vim.opt.number = true -- show numberline    
vim.opt.relativenumber = true -- relative numbers    
vim.opt.showtabline = 2 -- always display tabline
vim.opt.laststatus = 3 -- global statusline
vim.opt.cursorline = true -- highlight text under cursor
vim.opt.fillchars = { eob = " " } -- disable `~` on nonexistent lines
vim.opt.foldcolumn = '1' -- show foldcolumn
vim.opt.signcolumn = 'yes' -- show signcolumn
vim.opt.termguicolors = true -- enable 24-bit RGB color in the TUI

-- [[ Tab Options ]]
vim.opt.tabstop = 2 -- number of space in a tab
vim.opt.shiftwidth = 0 -- number of space inserted for indentation; when zero the 'tabstop' value will be used
vim.opt.expandtab = true -- enable the use of space in tab
vim.opt.shiftround = true -- round indentation to shiftwidth
    
-- [[ Behavior ]]
vim.opt.splitbelow = true -- splitting a new window below the current one
vim.opt.splitright = true -- splitting a new window at the right of the current one
vim.opt.mouse = "a" -- enable mouse support
vim.opt.preserveindent = true -- preserve indent structure as much as possible
vim.opt.timeoutlen = 500 -- shorten key timeout length a little bit for which-key
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- write to swap file after n miliseconds
vim.opt.writebackup = false -- disable making a backup before overwriting

-- [[ Completion ]]
vim.opt.completeopt = { 'menu', 'menuone', 'fuzzy' }
vim.opt.pumheight = 10
vim.opt.pumblend = 10

-- [[ Search ]]
vim.opt.ignorecase = true -- case insensitive searching
vim.opt.smartcase = true -- case sensitive searching
vim.opt.infercase = true -- infer cases in keyword completion
vim.opt.shortmess = vim.tbl_deep_extend("force", vim.opt.shortmess:get(), { s = true, I = true }) -- disable search count wrap and startup messages


if not vim.env.SSH_TTY or vim.fn.has "nvim-0.10" ~= 1 then -- only set `clipboard` if in SSH session and in neovim 0.10+
  vim.opt.clipboard = "unnamedplus" -- connection to the system clipboard
end

vim.opt.fsync = false

-- [[ Files ]]
vim.g.netrw_liststyle = 3
