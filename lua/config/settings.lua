
-- Números relativos
vim.wo.number = true
vim.wo.relativenumber = true

-- Auto-indentação
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Salvar automaticamente ao sair do modo de inserção
vim.cmd [[autocmd InsertLeave * silent! write]]
