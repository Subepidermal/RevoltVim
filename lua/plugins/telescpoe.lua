return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope')
    telescope.setup {}
      defaults = {
    -- Isso garante que o Telescope inclua a pasta de configurações do Neovim
    file_ignore_patterns = {"node_modules", ".git", "vendor"},
  },
    -- Atalho para Ctrl + P
    vim.keymap.set('n', '<C-p>', ":Telescope find_files<CR>", { noremap = true, silent = true })
  end
}

