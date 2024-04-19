return {
  {
    "folke/zen-mode.nvim",
    keys = {
      {
        "<leader>uz",
        function()
          require("zen-mode").toggle({ window = { width = 0.85 } })
        end,
        desc = "Toggle Zen",
      },
    },
  },
}
