return {
  {
    "CRAG666/code_runner.nvim",
    event = "VeryLazy",
    dependencies = {
      "betterTerm.nvim",
    },
    opts = {
      mode = "toogle",
    },
    config = function()
      require("config.code-runner").keymap()
      require("config.code-runner").setup()
    end,
  },
}
