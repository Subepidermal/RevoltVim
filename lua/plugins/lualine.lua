return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- vírgula aqui
  config = function()
    require('lualine').setup({
      options = {
        theme = 'molokai'
      },
    })
  end
}

