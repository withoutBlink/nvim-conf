-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Trun off autoformat
vim.g.autoformat = false

-- Set vim to use tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

--[[
Use \c to ignore case and \C to match case,
other than use vim opt ignorecase,
because it will ignore case when searching for a capital letter
]]
vim.opt.smartcase = true
vim.opt.ignorecase = false

vim.opt.hlsearch = true

--Set vim to ignore mouse event
vim.opt.mouse = ""

vim.g.lazyvim_picker = "telescope"

-- TODO: Set vim to notice _ and uppercase as word
