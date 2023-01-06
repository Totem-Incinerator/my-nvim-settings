
-- Funcion para crear atajos de teclado
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, {noremap = true, silent = true})
end

-- Funcion para crear atajos en modo normal
function nmap(shortcut, command)
  map('n', shortcut, command)
end




-- NEO-TREE

-- Abrir
nmap('<C-n>', ':Neotree toggle<CR>')

