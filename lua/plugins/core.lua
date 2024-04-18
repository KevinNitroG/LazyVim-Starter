return {
  {
    "folke/flash.nvim",
    enabled = false,
  },
  {
    "todo-comments.nvim",
    enabled = false,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "tokyonight",
    },
  },
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = [[
██╗  ██╗███████╗██╗   ██╗██╗███╗   ███╗
██║ ██╔╝██╔════╝██║   ██║██║████╗ ████║
█████╔╝ █████╗  ██║   ██║██║██╔████╔██║
██╔═██╗ ██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║
██║  ██╗███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

[ Kevin Nitro ]
    ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
      opts.theme = "doom" -- hyper or doom
      opts.config.week_header = { enable = false }
    end,
  },
}
