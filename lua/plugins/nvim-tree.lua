return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
    local api = require("nvim-tree.api")
    
    vim.keymap.set("n", "<C-f>", function()
      if api.tree.is_visible() then
        if vim.bo.filetype == "NvimTree" then
          vim.cmd("wincmd p")
        else
          api.tree.focus ()
        end
      else
        api.tree.open()
      end
  end, {desc = "Abrir/focar ou voltar do NvimTree"})

  vim.keymap.set("n", "<C-f>q", function()
    api.tree.close()
  end, { desc = "Fechar NvimTree" })
end,
}
