return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'lua_ls',
                    'elixirls',
                    'rust_analyzer',
                    'tsserver',
                    'svelte',
                    'zls'
                }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.elixirls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.svelte.setup({})
            lspconfig.zls.setup({})

            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<space>f', function()
                vim.lsp.buf.format { async = true }
            end, {})
        end
    }
}