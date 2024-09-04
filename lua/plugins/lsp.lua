return {
  {
    'neovim/nvim-lspconfig',
    event = "BufReadPre",
    config = function()
      local lspconfig = require('lspconfig')

      lspconfig.tsserver.setup({
        on_attach = function(client, bufnr)
          client.resolved_capabilities.document_formatting = false
        end,
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
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
        ensure_installed = { "tsserver" },
      })
    end
  }
}
