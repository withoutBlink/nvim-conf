vim.g.mapleader = " "
vim.g.maplocalleader = ";"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.keymaps")
require("config.options")
require("config.lazy")
require("config.autocmds")

vim.cmd('colorscheme gruvbox')
