return {
  {
    "smjonas/inc-rename.nvim",
    keys = {
      {
        "<leader>rn",
        ":IncRename ",
        mode = "n",
        desc = "Inc-Rename",
        expr = true,
        silent = true,
      },
    },
    config = function()
      require("inc_rename").setup()
      require("noice").setup({
        presets = { inc_rename = true },
      })
    end,
  },
}
