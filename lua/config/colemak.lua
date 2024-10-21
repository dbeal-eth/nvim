vim.g.mapleader = " "

-- directional keys
vim.api.nvim_set_keymap('', 'u', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'n', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'e', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'i', 'l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'E', '5j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'U', '5k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'N', '^', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'I', '$', { noremap = true, silent = true })

-- windows directional
vim.api.nvim_set_keymap('', '<LEADER>w', '<C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<LEADER>u', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<LEADER>e', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<LEADER>n', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<LEADER>i', '<C-w>l', { noremap = true, silent = true })

-- remap find next and previous
vim.api.nvim_set_keymap('', 'j', 'n', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'J', 'N', { noremap = true, silent = true })

-- remap insert
vim.api.nvim_set_keymap('', 'k', 'i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'K', 'I', { noremap = true, silent = true })

-- remap undo
vim.api.nvim_set_keymap('', 'l', 'u', { noremap = true, silent = true })

-- misc
vim.api.nvim_set_keymap('', '<LEADER><CR>', ':nohlsearch<CR>', { noremap = true, silent = true })
