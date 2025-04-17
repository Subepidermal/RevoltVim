return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",  -- Complemento para LSP
        "hrsh7th/cmp-path",      -- Complemento para completar caminhos
        "hrsh7th/cmp-buffer",    -- Complemento para completar a partir do buffer
        "saadparwaiz1/cmp_luasnip",  -- Complemento para integrar com luasnip (se usar snippets)
    },
    config = function()
        local cmp = require("cmp")
        local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

        -- Configuração do nvim-cmp
        cmp.setup({
            sources = {
                { name = "nvim_lsp" },  -- Usar nvim LSP para completions
                { name = "buffer" },    -- Completar a partir do buffer atual
                { name = "path" },      -- Completar caminhos de arquivos
                { name = "luasnip" },   -- Completar com snippets
            },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)  -- Integrando com luasnip (se usar)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),  -- Navegar para cima nos docs
                ["<C-f>"] = cmp.mapping.scroll_docs(4),   -- Navegar para baixo nos docs
                ["<C-Space>"] = cmp.mapping.complete(),   -- Abrir completions
                ["<C-e>"] = cmp.mapping.close(),          -- Fechar completions
                ["<CR>"] = cmp.mapping.confirm({ select = true }),  -- Confirmar seleção
                ["<Tab>"] = cmp.mapping.select_next_item(),  -- Selecionar o próximo item
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),  -- Selecionar o item anterior
                ["<C-j>"] = cmp.mapping.select_next_item(),  -- Navegar para baixo com Ctrl-j
                ["<C-k>"] = cmp.mapping.select_prev_item(),  -- Navegar para cima com Ctrl-k
            }),
        })
    end,
}

