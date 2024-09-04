-- lua/plugins/lsp.lua

return {
    { 'neovim/nvim-lspconfig', event = "BufReadPre" },
    {
      'williamboman/mason.nvim',
      config = function()
        require('mason').setup()
      end
    },
  }
  