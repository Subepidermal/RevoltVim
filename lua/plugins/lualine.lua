return {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'revolt',
        section_separators = '',
        component_separators = ''
      },
      sections = {
        lualine_c = { {'filename', path = 2} },
      },
  })
end
}

