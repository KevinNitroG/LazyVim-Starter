return {
  {
    "Zeioth/compiler.nvim",
    enabled = false and not vim.g.is_windows,
    event = "VeryLazy",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim" },
    opts = {},
  },
  {
    "stevearc/overseer.nvim",
    enabled = false and not vim.g.is_windows,
    event = "VeryLazy",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1,
      },
    },
  },
}
