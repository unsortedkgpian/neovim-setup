-- ~/.config/nvim/lua/keymaps.lua
-- Additional keymaps for better workflow

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- Better indenting
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left and reselect' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right and reselect' })

-- Move selected lines up/down
vim.keymap.set('v', 'J', ":move '>+1<CR>gv-gv", { desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":move '<-2<CR>gv-gv", { desc = 'Move selection up' })

-- Clear search highlight
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Better paste (don't overwrite register)
vim.keymap.set('v', 'p', '"_dP', { desc = 'Paste without overwriting register' })

-- Quick save
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>wq', '<cmd>wq<CR>', { desc = 'Save and quit' })

-- Buffer navigation
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<CR>', { desc = 'Next buffer' })

-- Keep cursor centered when scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down and center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up and center' })

-- Keep search results centered
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' })

-- Comment/uncomment lines (like VS Code Ctrl+/)
vim.keymap.set('n', '<C-/>', 'gcc', { remap = true, desc = 'Comment/uncomment line' })
vim.keymap.set('v', '<C-/>', 'gc', { remap = true, desc = 'Comment/uncomment selection' })

-- Alternative mapping for terminals that don't support Ctrl+/
-- Many terminals send Ctrl+_ when you press Ctrl+/
vim.keymap.set('n', '<C-_>', 'gcc', { remap = true, desc = 'Comment/uncomment line (alt)' })
vim.keymap.set('v', '<C-_>', 'gc', { remap = true, desc = 'Comment/uncomment selection (alt)' })
