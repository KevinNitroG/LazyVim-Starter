return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
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
}