-- lua/plugins/cmp.lua

return {
    -- Autocompletar
    {
      'hrsh7th/nvim-cmp',
      dependencies = {
        'hrsh7th/cmp-nvim-lsp',  -- LSP autocompletar
        'hrsh7th/cmp-buffer',  -- Sugestões do buffer
        'hrsh7th/cmp-path',  -- Sugestões de caminho de arquivos
        'hrsh7th/cmp-cmdline',  -- Sugestões da linha de comando
        'L3MON4D3/LuaSnip',  -- Snippets engine
        'saadparwaiz1/cmp_luasnip'  -- Suporte para snippets
      },
      config = function()
        local cmp = require('cmp')
  
        cmp.setup({
          snippet = {
            expand = function(args)
              require('luasnip').lsp_expand(args.body)
            end,
          },
          mapping = cmp.mapping.preset.insert({
            ['<C-Space>'] = cmp.mapping.complete(),  -- Chamar o autocompletar manualmente
            ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Confirmar com Enter
            ['<Tab>'] = cmp.mapping.select_next_item(),
            ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          }),
          sources = cmp.config.sources({
            { name = 'nvim_lsp' },  -- Integração com LSP
            { name = 'buffer' },
            { name = 'path' },
          }),
        })
      end
    }
  }
  