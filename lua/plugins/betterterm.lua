return {
  {
    "CRAG666/betterTerm.nvim",
    event = "VeryLazy",
    config = function()
      require("betterTerm").setup()
      require("config.betterterm").keymap()
    end,
  },
}
