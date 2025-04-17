return {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup({
      ensure_installed = {
        "lua-language-server",
        "csharp-language-server",
        "omnisharp",
        "xmlformatter",
        "stylua",
        "bicep-lsp",
        "html-lsp",
        "css-lsp",
        "csharpier",
        "prettier",
        "json-lsp"
        },
    })
  end
}
