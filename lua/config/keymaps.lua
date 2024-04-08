-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


vim.keymap.set("i", "<C-c>", "<esc>", {desc = "Exited insert mode"})
vim.keymap.set("n", "<leader>e",":lua MiniFiles.open()<cr>",{desc = "Open mini files"})
