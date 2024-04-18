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
      ["<leader>t"] = { name = "+term/runner" },
      ["<leader>z"] = { name = "+zen" },
    },
  },
}
