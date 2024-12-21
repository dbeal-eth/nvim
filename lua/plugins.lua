return {
	-- beautiful navigation
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	-- beautiful in-window skip anywhere
	{
		'ggandor/leap.nvim',
		config = function() require('leap').create_default_mappings() end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"bash",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"regex",
				"solidity",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"yaml"
			}
		}
	},
	-- keybindings helper
	{
		  "folke/which-key.nvim",
		  event = "VeryLazy",
		  init = function()
		    vim.o.timeout = true
		    vim.o.timeoutlen = 300
		  end,
		  opts = {
		    -- your configuration comes here
		    -- or leave it empty to use the default settings
		  }
	},
	-- snippet
	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp"
	},
    -- lsp configuration
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "b0o/schemastore.nvim"
        }
    },
	-- auto completion
	{
		"hrsh7th/nvim-cmp",
		--version = false, -- last release is way too old
		event = "InsertEnter",
		dependencies = {
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
        "windwp/nvim-autopairs",
		},
		opts = function()
			vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
			local cmp = require("cmp")
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')
			local defaults = require("cmp.config.default")()

			cmp.setup.cmdline({ '/', '?' }, {
			  mapping = cmp.mapping.preset.cmdline(),
			  sources = {
			    { name = 'buffer' }
			  }
			})

			-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline(':', {
			  mapping = cmp.mapping.preset.cmdline(),
			  sources = cmp.config.sources({
			    { name = 'path' }
			  }, {
			    { name = 'cmdline' }
			  }),
			  matching = { disallow_symbol_nonprefix_matching = false }
			})

            cmp.event:on(
                'confirm_done',
                cmp_autopairs.on_confirm_done()
            )

			return {
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end
				},
				mapping = cmp.mapping.preset.insert({
				  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
				  ['<C-f>'] = cmp.mapping.scroll_docs(4),
				  ['<C-Space>'] = cmp.mapping.complete(),
				  ['<C-e>'] = cmp.mapping.abort(),
				  ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
				  { name = "nvim_lsp" },
				  { name = "path" },
				}, {
				  { name = "buffer" },
				}),
				sorting = defaults.sorting,
			}
		end,
	},
    -- display of relevant function signature while you are typing it in
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {}
    },
	-- automatic formatting (prettier, etc)
	{
		"sbdchd/neoformat",
	},
	-- helpful utility for quotes, braces, etc. which need to "surround" things
	{
	    "kylechui/nvim-surround",
	    version = "*", -- Use for stability; omit to use `main` branch for the latest features
	    event = "VeryLazy",
	    opts = {
	    }
	},
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    -- better `fFtT` keybindings (imnsho)
    {
        'rhysd/clever-f.vim'
    },
    -- ability to view any state in undo history
    {
        'mbbill/undotree',
        event = "InsertEnter"
    },
	-- file explorer
	{
	'stevearc/oil.nvim',
		---@module 'oil'
		--@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		-- dependencies = { { "echasnovski/mini.icons", opts = {} } },
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
    -- test runner
    {
      "nvim-neotest/neotest",
      dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        -- languages supported (add more here if you have other test runners)
        "nvim-neotest/neotest-jest"
      },
      config = function ()
        require("neotest").setup({
            adapters = {
                require("neotest-jest")({
                    jestCommand = "npx jest",
                    env = { CI = true },
                    cwd = function(path)
                        return vim.fn.getcwd()
                    end
                })
            }
        })
  end
    },
	-- theme
	{
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  opts = {},
	},
    -- github copilot (now free)
    -- if you want to use copilot: run :Copilot setup (otherwise, this plugin doesn't do anything)
    {
      "github/copilot.vim",
      config = function()
        -- disable copilot unless explicitly requested
        vim.g.copilot_filetypes = {
          ['*'] = false,
        }
      end
    }
}

