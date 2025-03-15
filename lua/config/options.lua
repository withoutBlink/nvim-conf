-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Trun off autoformat
vim.g.autoformat = false

vim.g.wrap = true

-- Set vim to use tabs
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = false

-- Set vim to use Spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smoothscroll = false
vim.g.snacks_animate = false

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

vim.g.lazyvim_picker = "fzf"

vim.opt.statusline = "%<b%n: %f%h%m%r %= %l,%c 0x%B %{&fenc} %P"
