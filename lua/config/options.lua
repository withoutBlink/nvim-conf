-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Trun off autoformat
vim.g.autoformat = false

-- Set auto warp lines
vim.g.wrap = true

-- Set vim to use tabs
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = false

-- Set vim to use spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smoothscroll = false

-- Set vim sroll offset
vim.opt.scrolloff = 6
vim.opt.signcolumn = "yes"

-- Set line number
vim.opt.number = true
vim.opt.relativenumber = true

--[[
Use \c to ignore case and \C to match case,
other than use vim opt ignorecase,
because it will ignore case when searching for a capital letter
]]
vim.opt.smartcase = true
vim.opt.ignorecase = false

vim.opt.hlsearch = true
vim.opt.cursorline = true

--Set vim to ignore mouse event
vim.opt.mouse = ""

-- Turn off status line
vim.opt.laststatus = 0

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Use indent for folding
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

