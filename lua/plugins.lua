return require('packer').startup(function()
  -- Packer can manager itself
     use 'wbthomason/packer.nvim'

  -- colorshcema
     use { "catppuccin/nvim", as = "catppuccin" }

  -- NeoTree explorador de archivos
     use {
       "nvim-neo-tree/neo-tree.nvim",
       branch = "v2.x",
       requires = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    }

  -- Feline barra de estado
     use 'feline-nvim/feline.nvim'

  -- Soporte para lenguajes
     use 'neovim/nvim-lspconfig'

  -- Auto completado
     use "hrsh7th/cmp-buffer"
     use "hrsh7th/cmp-cmdline"
     use "hrsh7th/cmp-nvim-lsp"
     use "hrsh7th/cmp-path"
     use "hrsh7th/nvim-cmp"

  -- Bufferline pestañas de archivo
     use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Autocompletado de parentesis
     use {
	    "windwp/nvim-autopairs"
     }
end)
