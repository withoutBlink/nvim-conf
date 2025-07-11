
-- get current project folder during loading plugins

local fzf_keymaps = {
  {
    "<leader>s",
    function()
      require("fzf-lua").grep_cword()
    end,
    desc = "Find Symbol Under Cursor(Project)",
    nowait = true,
  },
  {
    "<leader>f",
    function()
      require("fzf-lua").files({cwd = "."})
    end,
    desc = "Find Files(Project)",
    nowait = true,
  },
  {
    "<leader>F",
    function()
      require("fzf-lua").live_grep()
    end,
    desc = "Find Symbol(Project)",
    nowait = true,
  },
  {
    "<leader>/",
    function()
      require("fzf-lua").grep_curbuf()
    end,
    desc = "Find Symbol(Buffer)",
    nowait = true,
  },
  {
    "ss",
    function()
      require("fzf-lua").grep_cword({ cwd = vim.fn.expand("%:p:h") })
    end,
    desc = "Find Symbol Under Cursor(Current)",
    nowait = true,
  },
  {
    "sf",
    function()
      require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") })
    end,
    desc = "Find Files(Current)",
    nowait = true,
  },
  {
    "sF",
    function()
      require("fzf-lua").live_grep({ cwd = vim.fn.expand("%:p:h") })
    end,
    desc = "Find Symbols(Currnet)",
    nowait = true,
  },
  {
    "spf",
    function()
      require("fzf-lua").files({ cwd = require("lazy.core.config").options.root })
    end,
    desc = "Find Files(Plugins)",
  },
  {
    "spF",
    function()
      require("fzf-lua").live_grep({ cwd = require("lazy.core.config").options.root })
    end,
    desc = "Find Symbols(Plugins)",
  },
}

local M = {
  {
    "ibhagwan/fzf-lua",
    keys = function()
      return fzf_keymaps
    end,
  },
}

return M
