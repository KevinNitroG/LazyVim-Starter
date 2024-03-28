return {
  {
    "zakissimo/smoji.nvim",
    keys = {
      {
        "<leader>gm",
        "<CMD>Smoji<CR>",
        mode = "n",
        desc = "Smoji",
      },
    },
    config = function()
      require("smoji")
    end,
  },
}
