return {
  {
    "CRAG666/code_runner.nvim",
    opts = {
      mode = "toggleterm",
    },
    keys = {
      {
        "<leader>rr",
        ":RunCode<CR>",
        desc = "RunCode",
      },
      {
        "<leader>rp",
        ":RunProject<CR>",
        desc = "RunProject",
      },
      {
        "<leader>rc",
        ":RunClose<CR>",
        desc = "RunClose",
      },
    },
    config = function()
      require("config.code-runner").setup()
    end,
  },
}
