vim.opt.scrolloff = 4                       -- Ensure that there are at least 4 lines from the cursor when moving the cursor through a file
vim.opt.expandtab = true                    -- Use spaces instead of tabs
vim.opt.shiftwidth = 4                      -- Indentation width
vim.opt.softtabstop = 4                     -- Edit with <BS> or <Tab> in steps of 4 spaces
vim.opt.tabstop = 4                         -- Display tabs as 4 spaces

-- synchronize the system clipboard with the vim clipboard
vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus'
