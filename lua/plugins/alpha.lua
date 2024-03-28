return {
  {
    "goolord/alpha-nvim",
    enabled = false,
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
██╗  ██╗███████╗██╗   ██╗██╗███╗   ███╗
██║ ██╔╝██╔════╝██║   ██║██║████╗ ████║
█████╔╝ █████╗  ██║   ██║██║██╔████╔██║
██╔═██╗ ██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║
██║  ██╗███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

           [ Kevin Nitro ]
    ]]
      dashboard.section.header.val = vim.split(logo, "\n")
    end,
  },
}
