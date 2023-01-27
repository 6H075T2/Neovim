-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
use {'wbthomason/packer.nvim'}
  
-- Telescope
use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
}

-- ColorScheme
    use {'navarasu/onedark.nvim'}

-- Treesitter



-- NVIM_FileTree
 
-- Lua-Line
    use {'nvim-lualine/lualine.nvim'}
    use {'kyazdani42/nvim-web-devicons'}

-- Floating Term
    use {'voldikss/vim-floaterm'}

-- NUI
    use {"MunifTanjim/nui.nvim"}
-- NOICE
    use {"folke/noice.nvim"}
-- NVIM-NOTIFY
    use {"rcarriga/nvim-notify"}

-- STARTUP SCREEN
    use {"goolord/alpha-nvim"}

--    use {"glepnir/dashboard-nvim"}
-- SCREENSAVER

end)
