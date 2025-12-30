-- bootstrap lazy.nvim, LazyVim and your plugins
--
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.hidden = true

require("config.lazy")

vim.api.nvim_create_user_command("InitLua", function()
  vim.cmd.edit(vim.fn.stdpath("config") .. "/init.lua")
end, {})

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })

vim.g.mapleader = " "
