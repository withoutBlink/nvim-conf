local util = require("lazyvim.util")

-- get current project folder during loading plugins
local project_pwd = util.root()

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
      require("fzf-lua").files({ cwd = project_pwd })
    end,
    desc = "Find Files(Project)",
    nowait = true,
  },
  {
    "<leader>F",
    function()
      require("fzf-lua").live_grep({ cwd = project_pwd })
    end,
    desc = "Find Symbol(Project)",
    nowait = true,
  },
  {
    "<leader>/",
    function()
      require("fzf-lua").grep_curbuf()
    end,
    desc = "Find Symbol(File)",
    nowait = true,
  },
  {
    "<leader>e",
    function()
      require("fzf-lua").git_files()
    end,
    desc = "Find Git Files",
    nowait = true,
  },
  {
    "ss",
    function()
      require("fzf-lua").grep_cword({ cwd = vim.fn.expand("%:p:h") })
    end,
    desc = "Find Symbol Under Cursor(CWD)",
    nowait = true,
  },
  {
    "sf",
    function()
      require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") })
    end,
    desc = "Find Files(CWD)",
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
    opts = function(_, opts)
      local actions = require("fzf-lua").actions
      opts.files.actions = {
        ["ctrl-i"] = { actions.toggle_ignore },
        ["ctrl-h"] = { actions.toggle_hidden },
      }
      opts.grep.actions = {
        ["ctrl-i"] = { actions.toggle_ignore },
        ["ctrl-h"] = { actions.toggle_hidden },
      }
      return opts
    end,
    keys = function()
      return fzf_keymaps
    end,
  },
}

return M
