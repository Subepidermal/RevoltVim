local create_csharp_project = require("utils.create_csharp_project")

return{
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("dashboard").setup({
      theme = "doom", -- ou 'hyper'
      config = {
        header = {
[[         ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⡄⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣾⣿⣿⡇⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠖⠊⠉⠁⠀⠀⠀⠀⠀⠈⠁⠒⠠⢄⡀⠀⢀⣀⣿⣿⣿⣿⣿⡟⠁⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢲⣾⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣾⣿⣿⣆⡀⠀⠀⣀⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⢠⠏⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠠⠁⠀⠀⠀⠀⠀⢀⡀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⠟⠋⠑⡀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⢀⠃⢀⠀⠀⠀⠀⠀⣼⣧⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠰⡀⠀⠀⠀⠀]],
[[⠀⠀⠀⠘⠀⢾⣧⣤⣶⣶⣿⣿⣧⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀]],
[[⠀⠀⠀⡇⠀⠘⣿⢿⣿⡿⣉⣩⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀]],
[[⠀⠀⠀⡇⠀⢰⣷⣤⣟⡻⠋⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀]],
[[⠀⠀⠀⠇⠀⢄⠬⣓⠤⠒⠒⣸⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀]],
[[⠀⠀⠀⠸⠀⠀⠐⠈⠀⠰⣎⡏⠀⠀⣿⣿⠈⣿⣿⠁⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⢀⠃⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⢡⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡏⠀⣿⡟⠀⠸⣿⣿⣿⣿⡧⠀⠀⠀⠀⠀⠀⠀⠀⡌⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠣⡀⠀⠀⠀⠀⠀⠀⠀⢸⣿⢸⣿⠇⠀⠀⢹⣿⢻⣿⣇⠀⠀⠀⠀⠀⠀⠀⠜⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠑⢄⠀⠀⠀⠀⠀⠀⢸⣿⢸⣿⠀⠀⠀⠀⣿⡇⢿⣿⠆⠀⠀⠀⠀⡠⠊⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⠀⠀⠀⠀⢸⡇⢾⡟⠀⠀⠀⠀⣿⠁⢸⣿⠀⠀⠀⡠⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠂⢴⣿⡿⣷⣾⣿⠀⠀⣤⣼⡏⠀⢸⣇⠤⠐⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠓⠒⠀⠸⠿⠟⢲⣶⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠘⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch,
"",
        },

        center = {
          { icon = "  ", desc = "Create C# Project", key = "s", action = ":lua require('utils.create_csharp_project').create_project()" },
          { icon = "  ", desc = "New File", key = "n", action = "enew" },
          { icon = "  ", desc = "Find File          ", key = "f", action = "Telescope find_files"},
          { icon = "  ", desc = "Recent Files", key = "r", action = "Telescope oldfiles" },
          { icon = "  ", desc = "Recent Projects", key = "g", action = "Telescope projects" },
          { icon = "  ", desc = "Plugins", key = "x", action = "edit ~/.config/nvim/lua/plugins/" },
          { icon = "  ", desc = "Config", key = "c", action = "edit ~/.config/nvim/lua/config/" },

        },

        footer = function()
          return { 
            "YOUR ANGER IS A GIFT",
            "  " .. require("lazy").stats().count .. " plugins   ".. os.date("%d/%m/%y %H:%M:%S")
          }
        end,
      },
    })

    vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ff5555", bold = true })
    vim.api.nvim_set_hl(0, "DashboardCenter", { fg = "#ffffff", bold = true })
    vim.api.nvim_set_hl(0, "DashboardIcon",   { fg = "#ff5555" })
    vim.api.nvim_set_hl(0, "DashboardDesc",   { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "DashboardKey",    { fg = "#ff5555", bold = true })
    vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#ff5555", italic = true })
  end,
}
