-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "gct", "O<esc>VcTODO: <esc><cmd>normal gcc<cr>A", { desc = "Add TODO comment above" })
