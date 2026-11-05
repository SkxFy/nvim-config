return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable({
                "clangd",
                "lua_ls",
                "marksman",
                "jdtls",
                "ts_ls",
                "vue_ls",
                "yamlls",
                "lemminx",
                "bashls",
                "jsonls",
                "html",
                "cssls",
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
