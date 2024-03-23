return {
  {
    "CRAG666/code_runner.nvim",
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
