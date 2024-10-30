-- return {{

--     'nvim-lualine/lualine.nvim',
--     dependencies = {'nvim-tree/nvim-web-devicons'},
--     options = {
--         theme = "catppuccin"
--     },
--     config = function()
--         require("lualine").setup()
--     end

-- }}

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup()
    end
    -- config = function()
    --     require("lualine").setup({
    --         options = {
    --             theme = "catppuccin",
    --             section_separators = { left = '', right = '' },
    --             sections = {
    --                 lualine_a = {
    --                     { 'mode', separator = { left = '' }, right_padding = 2 },
    --                 },
    --                 lualine_b = { 'filename', 'branch', 'diagnostics' },
    --                 lualine_c = { 'fileformat' },
    --                 lualine_x = {},
    --                 lualine_y = { 'filetype', 'progress' },
    --                 lualine_z = {
    --                     { 'location', separator = { right = '' }, left_padding = 2 },
    --                 },
    --             }
    --         }
    --     })
    -- end
}
