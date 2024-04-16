return {
  {
    "stevearc/oil.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      default_file_explorer = true,
      use_default_keymaps = false,
      view_options = {
        show_hidden = true,
      },
    },
  },
}
