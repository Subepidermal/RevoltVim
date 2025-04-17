vim.g.commentary_keymap = "gcc" -- configura a tecla antes da chamada

return {
  require("lazy").setup({
    "tpope/vim-commentary",
  })
}
