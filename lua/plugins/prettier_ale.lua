-- lua/plugins/prettier_ale.lua

return {
    {
      'prettier/vim-prettier',
      run = 'npm install',
      cmd = "Prettier",
    },
    {
      'dense-analysis/ale',
      config = function()
        -- Configurar ESLint como linter e fixador
        vim.g.ale_linters = {
          javascript = {'eslint'},
          typescript = {'eslint'},
          javascriptreact = {'eslint'},
          typescriptreact = {'eslint'},
        }
        
        vim.g.ale_fixers = {
          javascript = {'eslint'},
          typescript = {'eslint'},
          javascriptreact = {'eslint'},
          typescriptreact = {'eslint'},
        }
        
        -- Ativar correção automática ao salvar
        vim.g.ale_fix_on_save = 1
      end
    }
  }
  