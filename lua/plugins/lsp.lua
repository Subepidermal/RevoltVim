return {
  "neovim/nvim-lspconfig",  -- LSPConfig para configurar o Roslyn
  config = function()
    -- Configuração para o Roslyn
    require("lspconfig").roslyn.setup({
      -- Caminho para a DLL do Roslyn (ajuste conforme sua instalação)
      cmd = { "dotnet", "~/.local/share/nvim/roslyn/Microsoft.CodeAnalysis.LanguageServer.dll" },
      
      -- Opções do LSP
      on_attach = function(client, bufnr)
        print("Roslyn LSP está ativo!")
        
        -- Configuração de keybindings ou outras personalizações aqui
      end,
      
      -- Capabilities do LSP com Blink
      capabilities = require('blink.cmp').get_lsp_capabilities(),
      
      -- Configuração do servidor para arquivos C# e Visual Basic
      filetypes = { "cs", "vb" },
      root_dir = require('lspconfig').util.root_pattern('*.sln', '*.csproj'),
    })
  end,
}
