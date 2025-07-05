local M = {
  {
    'nvimdev/dashboard-nvim',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    event = 'VimEnter',
    config = function()
      local logo = [[
       ██████╗ ███████╗███████╗███████╗██████╗ ████████╗███████╗██████╗
       ██╔══██╗██╔════╝██╔════╝██╔════╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
       ██║  ██║█████╗  ███████╗█████╗  ██████╔╝   ██║   █████╗  ██║  ██║
       ██║  ██║██╔══╝  ╚════██║██╔══╝  ██╔══██╗   ██║   ██╔══╝  ██║  ██║
       ██████╔╝███████╗███████║███████╗██║  ██║   ██║   ███████╗██████╔╝
       ╚═════╝ ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═════╝
       ███╗   ██╗██╗   ██╗██╗███╗   ███╗
       ████╗  ██║██║   ██║██║████╗ ████║
       ██╔██╗ ██║██║   ██║██║██╔████╔██║
       ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
       ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
       ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      require("dashboard").setup({
        config = {
          header = vim.split(logo, "\n"),
          project = { enable = false },
          mru = { enable = false },
          footer = {},
          shortcut = {
            { desc = '[  Github]', group = 'DashboardShortCut' },
            { desc = '[  withoutBlink]', group = 'DashboardShortCut' },
          },
        }
      })
    end,
  },
}

return M
