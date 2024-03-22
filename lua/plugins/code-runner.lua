return {
  {
    "CRAG666/code_runner.nvim",
    dependencies = {
      "betterTerm.nvim",
    },
    config = function()
      require("config.code-runner").keymap()
    end,
  },
}
