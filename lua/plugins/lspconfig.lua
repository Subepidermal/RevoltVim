-- lspconfig.lua
return {
  'neovim/nvim-lspconfig',
  config = function()
    require('lspconfig').roslyn.setup{
      cmd = { '/home/lucasedr/.local/share/nvim/roslyn/Microsoft.CodeAnalysis.LanguageServer' },
    flags = {debounce_text_changes = 100,},
    }  
  end
}

