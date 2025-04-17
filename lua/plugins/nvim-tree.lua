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

    -- Abrir/focar ou voltar do nvim-tree
    vim.keymap.set("n", "<C-f>", function()
      if api.tree.is_visible() then
        if vim.bo.filetype == "NvimTree" then
          vim.cmd("wincmd p") -- volta para o buffer anterior
        else
          api.tree.focus()
        end
      else
        api.tree.open()
      end
    end, { desc = "Abrir/focar ou voltar do NvimTree" })

    -- Fechar nvim-tree
    vim.keymap.set("n", "<C-f>q", function()
      if api.tree.is_visible() then
        api.tree.close()
      end
    end, { desc = "Fechar NvimTree" })
  end,
}
