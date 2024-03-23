return {
  "mfussenegger/nvim-lint",
  event = { "BufEnter", "BufWritePost" },
  opts = function()
    require("config.nvim-lint")
  end,
}
