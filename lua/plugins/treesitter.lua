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
                "javascript",
                "typescript",
                "tsx",
                "vue",
                "html",
                "css",
                "yaml",
                "xml",
                "json",
                "bash",
                "jsonc",
                "cmake",
                "dockerfile",
                "toml",
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
