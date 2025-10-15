-- Basic Neovim configuration
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.tabstop = 4            -- Tab width
vim.opt.shiftwidth = 4         -- Indent width
vim.opt.expandtab = true       -- Use spaces instead of tabs
vim.opt.smartindent = true     -- Auto indent
vim.opt.wrap = false           -- Don't wrap lines
vim.opt.ignorecase = true      -- Case insensitive search
vim.opt.smartcase = true       -- Unless uppercase in search
vim.opt.termguicolors = false  -- Use terminal colors (tty theme)
vim.opt.mouse = 'a'            -- Enable mouse

-- Use default terminal colorscheme
vim.cmd('colorscheme default')

-- Terminal keybindings
vim.keymap.set('n', '<leader>t', ':terminal<CR>', { desc = 'Open terminal' })
vim.keymap.set('n', '<leader>tv', ':vsplit | terminal<CR>', { desc = 'Open terminal in vertical split' })
vim.keymap.set('n', '<leader>th', ':split | terminal<CR>', { desc = 'Open terminal in horizontal split' })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Auto enter insert mode when opening terminal
vim.api.nvim_create_autocmd('TermOpen', {
  pattern = '*',
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.cmd('startinsert')
  end,
})
