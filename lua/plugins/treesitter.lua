return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "lua",
                "java",
                "markdown",
                "markdown_inline",
                "vim",
                "vimdoc",
            },

            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },

            auto_install = false,
        })
    end,
}
