local telescope = require('telescope.builtin')
local neotest = require('neotest')

-- oil (file explorer)
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- telescope
vim.keymap.set('n', '<C-p>', telescope.find_files, { desc = 'navigate by files' })
vim.keymap.set('n', '<C-f>', telescope.live_grep, { desc = 'navigate by search text' })

-- "run" things
vim.keymap.set('n', 'rb', ':Neoformat<CR>:wa<CR>:!npm run build<CR>', { desc = 'build the project (package.json "build" command)' })
vim.keymap.set('n', 'rt', neotest.run.run, { desc = 'run the nearest test' })
vim.keymap.set('n', 'rT', function() neotest.run.run(vim.fn.expand('%')) end, { desc = 'run all tests in current file' })
vim.keymap.set('n', 'rc', neotest.run.stop, { desc = 'cancel any running tests or processes' })

-- lsp related
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'goto definition' })

-- tabs
vim.keymap.set('n', 'tu', ':tabe<CR>', { desc = 'open new tab' })
vim.keymap.set('n', 'tn', ':-tabnext<CR>', { desc = 'switch tab left' })
vim.keymap.set('n', 'ti', ':+tabnext<CR>', { desc = 'switch tab right' })
vim.keymap.set('n', 'tmu', ':-tabmove<CR>', { desc = 'move tab left' })
vim.keymap.set('n', 'tmi', ':+tabmove<CR>', { desc = 'move tab right' })

-- fast quit
vim.keymap.set('n', 'Q', ':q<CR>', { desc = 'quit' })
vim.keymap.set('n', 'W', ':Neoformat<CR>:w<CR>', { desc = 'save' })
