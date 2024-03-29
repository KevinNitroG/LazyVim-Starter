-- set global variable to declare os type
vim.g.os_type = require("kevinnitro.utils.get-os")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Copilot disable by default
-- https://github.com/orgs/community/discussions/57887#discussioncomment-8146611
-- vim.cmd(":Copilot disable")
