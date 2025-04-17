return {
  "paulfrische/reddish.nvim",
  lazy = false, -- garante que o tema seja carregado imediatamente
  priority = 1000, -- carrega o tema antes dos outros plugins
  config = function()
    vim.cmd.colorscheme("reddish")
  end,

}

