return {
  {
    "CRAG666/code_runner.nvim",
    opts = {
      mode = "toggleterm",
    },
    config = function()
      require("config.code-runner").keymap()
      require("config.code-runner").setup()
    end,
  },
}
