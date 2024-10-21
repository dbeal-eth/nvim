local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lspconfig.vtsls.setup {
	capabilities = capabilities
}
lspconfig.solidity_ls.setup {
	capabilities = capabilities
}

lspconfig.rust_analyzer.setup {
	capabilities = capabilities
}

lspconfig.lua_ls.setup {
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = {
					'vim',
                    'redis',
                    'KEYS',
                    'ARGV',
                    'cmsgpack',
                    'cjson',
                    'struct',
                    'bit',
					'require'
				}
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true)
			}
		}
	}
}

lspconfig.jsonls.setup {
    settings = {
        json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true }
        }
    }
}

lspconfig.yamlls.setup {
    settings = {
        yaml = {
            schemaStore = {
                enable = false,
                url = ""
            },
            schemas = require('schemastore').json.schemas(),
        }
    }
}
