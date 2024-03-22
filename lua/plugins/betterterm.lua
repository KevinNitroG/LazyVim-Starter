return {
  {
    "CRAG666/betterTerm.nvim",
    config = function()
      require("betterTerm").setup()
      require("config.betterterm").keymap()
    end,
  },
}
