-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map delete operator to black hole register (Normal and Visual mode)
vim.keymap.set({ "n", "x" }, "d", '"_d', { desc = "Delete to black hole register" })
