-- plugins.lua

-- Configuração do lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configurar plugins
require('lazy').setup({
  -- LSP e autocompletar
  { 'neovim/nvim-lspconfig', event = "BufReadPre" },
  { 'williamboman/mason.nvim', config = true },  -- Mason para instalar o LSP

  -- Treesitter para autoindentação e syntax highlighting
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        highlight = { enable = true },
      }
    end
  },

  -- GitHub Copilot
  { 'github/copilot.vim', event = "InsertEnter" },

  -- Fuzzy Finder (Telescope)
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    config = function()
      require('telescope').setup{}
    end
  },

  -- Prettier
  {
    'prettier/vim-prettier',
    run = 'npm install',
    cmd = "Prettier",
  },

-- Configurar o ESLint no ALE corretamente
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
})
