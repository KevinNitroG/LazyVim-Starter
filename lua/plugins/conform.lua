return {
  "stevearc/conform.nvim",
  -- event = { "BufReadPre", "BufNewFile" },
  event = { "BufWrite" },
  opts = require("config.conform"),
}
