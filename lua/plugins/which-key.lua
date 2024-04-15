return {
  "folke/which-key.nvim",
  opts = {
    plugins = {
      spelling = {
        enable = false,
      },
    },
    window = {
      border = "single",
    },
    layout = {
      align = "left",
    },
    defaults = {
      ["<leader>r"] = { name = "+code runner" },
      ["<leader>t"] = { name = "+better term" },
    },
  },
}
