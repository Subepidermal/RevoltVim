-- Configurações básicas
vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.g.mapleader = " "
vim.opt.cursorline = true
vim.o.showmode = false

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  command = "cd %:p:h",
})


-- Caminho onde o lazy.nvim será instalado
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
