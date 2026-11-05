return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable({
                "clangd",
                "lua_ls",
                "marksman",
                "jdtls",
            })

            vim.diagnostic.config({
                virtual_text = true,
                severity_sort = true,
                float = {
                    border = "rounded",
                },
            })
        end,
    },
}
