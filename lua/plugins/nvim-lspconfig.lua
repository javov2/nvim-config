return {
    "neovim/nvim-lspconfig",
    dependencies = {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
        "ray-x/guihua.lua", "neovim/nvim-lspconfig", "nvim-treesitter/nvim-treesitter"},
        -- config = function()
        --     require("go").setup()
        -- end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    }, "hrsh7th/cmp-nvim-lsp"},

    config = function()
        -- import cmp-nvim-lsp plugin
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        capabilities = cmp_nvim_lsp.default_capabilities()
        require("mason").setup()
        require("mason-lspconfig").setup()
    
        -- Using default
        require'lspconfig'.gopls.setup{}
        require('go').setup {capabilities = capabilities}

        -- Using Go.nvim
        -- require('go').setup {
        --     lsp_cfg = false,
        --     capabilities = capabilities
        -- }
        -- -- config() return the go.nvim gopls setup
        -- local cfg = require'go.lsp'.config()
        -- require('lspconfig').gopls.setup(cfg)
    end
}
