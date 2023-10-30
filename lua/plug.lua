-- [[ plug.lua ]]

require('packer').startup(function(use)
    use {
        'kyazdani42/nvim-tree.lua',
    }
    use {
        'nvim-lualine/lualine.nvim',
    }
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
            'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
            'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
            'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
        }
    }
    use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp'
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
      "roobert/f-string-toggle.nvim",
      config = function()
        require("f-string-toggle").setup({
          key_binding = "<leader>f",
          key_binding_desc = "Toggle f-string"
        })
      end,
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use {
        'neovim/nvim-lspconfig',
    }
    use { 'majutsushi/tagbar' }                        
    use { 'Yggdroot/indentLine' }                      
    use { 'tpope/vim-fugitive' }                       
    use { 'junegunn/gv.vim' }                          
    use { 'windwp/nvim-autopairs' } 
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'quangnguyen30192/cmp-nvim-ultisnips'}
end)

local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
    },

    sources = {
        {name = 'buffer'},
        {name = 'nvim_lsp'},
        {name = 'ultisnips'},
    }
})
