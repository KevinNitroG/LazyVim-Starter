return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
  {
    "folke/flash.nvim",
    enabled = false,
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
    end,
  },
}
