-- Definir a tecla leader como espaço
vim.g.mapleader = " "

-- Keybinds para navegação do LSP
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { noremap = true, silent = true })

-- Quick fix (importar automaticamente, corrigir problemas sugeridos pelo LSP)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true })

-- Autoformatação (Shift + Alt + F)
vim.keymap.set('n', '<S-A-f>', function() vim.lsp.buf.format({ async = true }) end, { noremap = true, silent = true })

-- Correção automática do ESLint (fix all auto-fixable problems)
vim.keymap.set('n', '<leader>cf', '<cmd>ALEFix<CR>', { noremap = true, silent = true })

-- Sugestão de código com Ctrl + Espaço
vim.keymap.set('i', '<C-Space>', function() require('cmp').complete() end, { noremap = true, silent = true })

-- Comandos LSP (comandos com d)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { noremap = true, silent = true })

-- Movimentação de arquivos e telescope (comandos com p)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>pf', function() require('telescope.builtin').find_files() end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ps', function() require('telescope.builtin').live_grep() end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>pb', function() require('telescope.builtin').buffers() end, { noremap = true, silent = true })
