
--local builtin = require('telescope.builtin')

-- Funcion para crear atajos de teclado
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, {noremap = true, silent = true})
end

-- Funcion para crear atajos en modo normal
function nmap(shortcut, command)
  map('n', shortcut, command)
end

-- Crear atajos en modo insert
function imap(shortcut, command)
  map('i', shortcut, command)
end

-- ELIMINAR NAVEGACION CON LAS TECLAS DE FLECHA
map('', '<up>', 'nop')
map('', '<down>', 'nop')
map('', '<left>', 'nop')
map('', '<right>', 'nop')

-- HABILITAR NAVEGACION EN EL MODO insert
map('i', '<C-h>', '<left>')
map('i', '<C-j>', '<down>')
map('i', '<C-k>', '<up>')
map('i', '<C-l>', '<right>')

-- Guardar
nmap('<leader>q', ':quitall<CR>') -- Salir y cerrar todas las ventanas
nmap('<leader>s', ':w<CR>') -- Guardar archivo

-- Moverse entre ficheros
map('', '<C-d>', ':bnext<CR>') -- Ir al siguiente fichero
map('', '<C-a>', ':bprev<CR>') -- Ir al anterior fichero



-----------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- NEO-TREE
nmap('<C-n>', ':Neotree toggle<CR>') -- Abrir/cerrar


-- Telescope
nmap('<C-p>', ':Telescope git_files hidden=true <CR>') -- Abrir telescope ignorado archivos especificados en .gitignore:w

