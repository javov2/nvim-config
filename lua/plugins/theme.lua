return {{
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
    config = function()
        vim.cmd.colorscheme("catppuccin")
    end
}}
