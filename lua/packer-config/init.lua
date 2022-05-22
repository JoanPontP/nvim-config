return require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'Mofiqul/dracula.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'romgrk/barbar.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
    use 'lewis6991/gitsigns.nvim'
    use 'terrortylor/nvim-comment'

-- LSP Configs
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'hrsh7th/cmp-path' -- completion for path
    use 'hrsh7th/cmp-buffer' -- completion from buffer
    use 'hrsh7th/cmp-cmdline' -- completion for command line
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'ray-x/lsp_signature.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'onsails/lspkind-nvim'
    use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
    use "rafamadriz/friendly-snippets"
end)
