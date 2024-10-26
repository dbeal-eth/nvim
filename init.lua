-- @dbeal-eth nvimrc

-- remove if you don't use colemak
require("config.colemak")

-- misc editor settings
require("config.editor")

-- plugins install and configuration
require("config.lazy")

-- commands
require("config.commands")

-- LSP configuration
require("config.lsp")

-- the color scheme
vim.cmd [[ colorscheme tokyonight-night ]]
