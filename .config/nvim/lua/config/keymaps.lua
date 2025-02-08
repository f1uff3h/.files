-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "gcT", "O<esc>VcTODO: <esc><cmd>normal gcc<cr>A", { desc = "Add TODO comment above current line" })
map("n", "gct", "o<esc>VcTODO: <esc><cmd>normal gcc<cr>A", { desc = "Add TODO comment below current line" })
map("n", "gcN", "O<esc>VcNOTE: <esc><cmd>normal gcc<cr>A", { desc = "Add NOTE comment above current line" })
map("n", "gcn", "o<esc>VcNOTE: <esc><cmd>normal gcc<cr>A", { desc = "Add NOTE comment below current line" })
map("n", "gcF", "O<esc>VcFIXME: <esc><cmd>normal gcc<cr>A", { desc = "Add FIXME comment above current line" })
map("n", "gcf", "O<esc>VcFIXME: <esc><cmd>normal gcc<cr>A", { desc = "Add FIXME comment below current line" })
map("n", "<leader>n", "<cmd>Neotree focus<cr>", { desc = "focus Neotree" })
