-- theme.lua

require('lazy').setup({
    { 
      'rose-pine/neovim',
      name = 'rose-pine',
      config = function()
        vim.cmd('colorscheme rose-pine')
      end
    }
  })
  
  -- Configuração de fundo escuro
  vim.o.background = "dark"
  