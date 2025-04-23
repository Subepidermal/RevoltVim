return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",  -- Atualiza os parsers do Tree-sitter
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "c", "c_sharp", "lua", "vim", "vimdoc"},
      sync_install = false,
      highlight = { enable = true }, -- Habilita o destaque de sintaxe
      indent = { enable = true },    -- Habilita a indentação automática
    })
  end
}
