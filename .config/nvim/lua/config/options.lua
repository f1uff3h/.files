-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
LazyVim.terminal.setup("nu")

local opt = vim.opt

opt.spell = true
opt.spelllang = "en_us"
opt.wrap = true
