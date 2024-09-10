return {
  {
    'neovim/nvim-lspconfig',
    event = "BufReadPre",
    config = function()
      local lspconfig = require('lspconfig')
      local cmp_nvim_lsp = require('cmp_nvim_lsp')

      -- Habilitar as capacidades do LSP para autocompletar
      local capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

      -- Configuração do ts_ls (TypeScript e JavaScript)
      lspconfig.ts_ls.setup({
        on_attach = function(client, bufnr)
          -- Desabilitar formatação do ts_ls (para usar o ESLint ou Prettier)
          client.server_capabilities.documentFormattingProvider = false
        end,
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "typescript.tsx", "typescript.jsx" },  -- Suporte a React e React Native
        capabilities = capabilities,  -- Integração com o nvim-cmp para autocompletar
      })
    end
  },
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "ts_ls" },  -- Substituir tsserver por ts_ls
      })
    end
  }
}
