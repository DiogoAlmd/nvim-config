-- lsp.lua

-- Configuração do Mason
require('mason').setup()

-- Configuração do LSP
local lspconfig = require('lspconfig')
lspconfig.tsserver.setup {}

-- Autoformatação e correção no salvamento
vim.cmd [[autocmd BufWritePre *.ts,*.tsx,*.js,*.jsx EslintFixAll]]
