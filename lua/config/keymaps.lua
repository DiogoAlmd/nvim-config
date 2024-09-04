-- keymaps.lua

-- Definir a tecla leader como espaço
vim.g.mapleader = " "

-- Keybinds para navegação do LSP
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })

-- Quick fix (importar automaticamente, corrigir problemas sugeridos pelo LSP)
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

-- Autoformatação (Shift + Alt + F)
vim.api.nvim_set_keymap('n', '<S-A-f>', '<cmd>lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })

-- Correção automática do ESLint (fix all auto-fixable problems)
vim.api.nvim_set_keymap('n', '<leader>cf', '<cmd>ALEFix<CR>', { noremap = true, silent = true })

-- Sugestão de código com Ctrl + Espaço
vim.api.nvim_set_keymap('i', '<C-Space>', 'cmp#complete()', { noremap = true, silent = true, expr = true })

-- Comandos LSP (comandos com d)
-- Navegar para o próximo erro ou warning do LSP
vim.api.nvim_set_keymap('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
-- Navegar para o erro ou warning anterior do LSP
vim.api.nvim_set_keymap('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
-- Mostrar detalhes de erro em uma janela flutuante
vim.api.nvim_set_keymap('n', '<leader>de', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

-- Movimentação de arquivos e telescope (comandos com p)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Abrir o Telescope para navegação de arquivos
vim.api.nvim_set_keymap('n', '<leader>pf', '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true, silent = true })
-- Procurar qualquer string dentro do arquivo do projeto
vim.api.nvim_set_keymap('n', '<leader>ps', '<cmd>lua require("telescope.builtin").live_grep()<CR>', { noremap = true, silent = true })
-- Atalho para ver os buffers abertos no Telescope
vim.api.nvim_set_keymap('n', '<leader>pb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })