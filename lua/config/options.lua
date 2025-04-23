vim.opt.tabstop = 2                 -- número de espaços do tab
vim.opt.shiftwidth = 2              -- número de espaços usados para identação automática
vim.opt.expandtab = true            -- converte tab em espaços
vim.opt.number = true               -- mostrar número de linha
vim.opt.relativenumber = true       -- Mostrar número relativo
vim.opt.cursorline = true           -- Destacar linha atual
vim.api.nvim_set_option("clipboard", "unnamed")
vim.api.nvim_create_autocmd("Bufenter", { pattern = "*", command = "cd %:p:h",})
