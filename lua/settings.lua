-- Variables locales
set = vim.opt -- Equivale a set

-- Configuraciones basicas
set.encoding = "utf-8" -- Codificacion para caracteres especiales
set.backspace = "indent,eol,start" -- Tecla retroceso funciona en cualquier caracter en el insertmode
set.clipboard = "unnamed" -- Habilitar portapapeles
set.mouse = "a" -- Habilitar mouse
set.guifont = "Consolas" -- Fuente a usar
set.lazyredraw = true -- No renderiza la pantalla al guardar
set.termguicolors = true -- Activar colores de la terminal


-- Tiempos de espera
set.timeout = false
set.ttimeout = true
set.ttimeoutlen = 100

-- Pantalla
set.showmatch = true -- Mostrar cierre de parentesis
set.synmaxcol = 300 -- Deja de renderizar la sintaxis despues de x(300) columnas
set.laststatus = 2 -- Siempre muestra la linea de estado
set.list = false -- No renderizar caracteres blancos (vacios)

-- Barra de la izquierda
set.number = true
set.numberwidth = 4 -- Conserva 3 espacios para cada linea numerica
set.modelines = 0

-- Identado
set.autoindent = true
set.smartindent = true
set.tabstop = 2 -- 1 TAB = 2 espacios
set.shiftwidth = 2 -- Regla de identacion a 4 espacios
set.expandtab = true -- Extender la tabulacion a los espacios

-- Busqueda
set.incsearch = true -- Empieza a buscar cuando escribes sin necesidad de presionar enter
set.ignorecase = true -- Ignora mayusculas y minusculas cuando se busca
set.smartcase = true -- No ignora mayus y minus si la palabra a buscar las contiene


-- Backup
set.backup = false
set.writebackup = false
set.swapfile = false

-- Solo mostrar el cursor en la ventana actual en modo normal
vim.cmd([[
  augroup cline
      au!
      au WinLeave * set nocursorline
      au WinEnter * set cursorline
      au InsertEnter * set nocursorline
      au InsertLeave * set cursorline
  augroup END
]])
