return {
  "mfussenegger/nvim-lint",
  event = "VeryLazy",
  config = function()
    require("config.nvim-lint")
  end,
}
