return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 
    'nvim-lua/plenary.nvim', 
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  }, 

  config = function()
    local builtin = require('telescope.builtin')
    require('telescope').setup{
      pickers = {
        find_files = {
          theme = "ivy"
        }
      }
    }

    vim.keymap.set('n', '<leader>fs', builtin.find_files, { desc = 'Telescope find files' })   
    vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })   

    -- Grep
    vim.keymap.set('n', '<leader>fg', function()
      builtin.grep_string({ search = vim.fn.input("Grep: ") })
    end, { desc = 'Grep files' })

    -- Config folder
    vim.keymap.set('n', '<leader>ff', function()
      builtin.find_files{
        cwd = vim.fn.stdpath("config")
      }
    end, { desc = 'Telescope find Neovim config' })

    -- CSharp projects
    vim.keymap.set('n', '<leader>fc', function()
      builtin.find_files{
        cwd = vim.fn.expand("~/Documents/CSharp/")
      }
    end, { desc = 'Telescope find CSharp folder projects' })

  end
}
