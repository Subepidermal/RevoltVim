-- No seu arquivo de configuração (init.lua ou equivalente)
return {
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    config = function()
      local lspconfig = require('lspconfig')

      -- Configuração do Roslyn Language Server
      lspconfig.rls.setup({
        cmd = { "/path/to/roslyn-language-server" },
        filetypes = { "cs" },
        root_dir = function(fname)
          return lspconfig.util.root_pattern("*.sln", "*.csproj")(fname) or vim.fn.getcwd()
        end,
        settings = {
          -- Configurações adicionais se necessárias
        },
        on_attach = function(client, bufnr)
          print("Roslyn Language Server foi conectado com sucesso!")
        end,
        log_level = vim.lsp.protocol.MessageType.Warning,  -- Ativa logs detalhados para depuração
      })
    end
  }
}
