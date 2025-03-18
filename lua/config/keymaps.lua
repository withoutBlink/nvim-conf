-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- space is leader key

-- Shorten function name
local keymap = vim.keymap
local default_opts = { noremap = true, silent = true }

--- @param orig_opts table<string, any>
--- @param desc string
local function opts_set_desc(orig_opts, desc)
  local res_opts = orig_opts
  res_opts.desc = desc
  return res_opts
end

-- Delete key bindings, by binding it to Nop, and forbid for remap
-- keymap.set({ "n", "v" }, "c", "<Nop>", default_opts)

-- Delete s from standard key bindings
keymap.set({ "n" }, "s", "<Nop>", default_opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
-- Better up/aown
-- keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Normal --
-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts_set_desc(default_opts, "Focus Left"))
keymap.set("n", "<C-j>", "<C-w>j", opts_set_desc(default_opts, "Focus Below"))
keymap.set("n", "<C-k>", "<C-w>k", opts_set_desc(default_opts, "Focus Above"))
keymap.set("n", "<C-l>", "<C-w>l", opts_set_desc(default_opts, "Focus Right"))

-- Better window movements
keymap.set("n", "<C-d>", "<C-d>zz", opts_set_desc(default_opts, "Move Down"))
keymap.set("n", "<C-u>", "<C-u>zz", opts_set_desc(default_opts, "Move Down"))

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", opts_set_desc(default_opts, "Resize Up"))
keymap.set("n", "<C-Down>", ":resize +2<CR>", opts_set_desc(default_opts, "Resize Down"))
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts_set_desc(default_opts, "Resize Left"))
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts_set_desc(default_opts, "Resize Right"))

-- Navigate buffers
keymap.set("n", "L", ":bn<CR>", opts_set_desc(default_opts, "Next Buffer"))
keymap.set("n", "H", ":bp<CR>", opts_set_desc(default_opts, "Previous Buffer"))

-- Disable highlight
keymap.set("n", "<leader>h", ":noh<CR>", opts_set_desc(default_opts, "Disable Highlight"))

-- Save buffer
keymap.set("n", "<leader>w", ":w<CR>", opts_set_desc(default_opts, "Save Buffer"))

-- Quit
keymap.set("n", "<leader>q", ":q<CR>", opts_set_desc(default_opts, "Quit Window"))

-- Undo and Redo
keymap.set("n", "u", ":undo<CR>", opts_set_desc(default_opts, "Undo"))
keymap.set("n", "U", ":redo<CR>", opts_set_desc(default_opts, "Redo"))

-- Diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
keymap.set("n", "]d", diagnostic_goto(true), opts_set_desc(default_opts, "Next Diagnostics"))
keymap.set("n", "[d", diagnostic_goto(false), opts_set_desc(default_opts, "Prev Diagnostics"))

-- Insert --
-- Press jk fast to enter normal mode
keymap.set("i", "jk", "<ESC>", opts_set_desc(default_opts, "Escape_1"))
keymap.set("i", "kj", "<ESC>", opts_set_desc(default_opts, "Escape_2"))

-- Stay in indent mode
keymap.set("v", "<", "<gv", opts_set_desc(default_opts, "Indent Left"))
keymap.set("v", ">", ">gv", opts_set_desc(default_opts, "Indent Right"))

-- Move text up and down
keymap.set("v", "J", ":m .+1<CR>==", opts_set_desc(default_opts, "Move Up"))
keymap.set("v", "K", ":m .-2<CR>==", opts_set_desc(default_opts, "Move Down"))

-- Visual --
keymap.set("v", "F", ":Format<CR>", default_opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts_set_desc(default_opts, "X Move Up"))
keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts_set_desc(default_opts, "X Move Down"))
