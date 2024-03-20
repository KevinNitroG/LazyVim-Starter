return {
  "mfussenegger/nvim-lint",
  event = "VeryLazy",
  opts = function()
    require("config.nvim-lint")
  end,
}
