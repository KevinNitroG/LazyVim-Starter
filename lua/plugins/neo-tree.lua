return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      event_handlers = {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.opt_local.relativenumber = true
        end,
        sources = { "filesystem" },
        filesystem = {
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = true,
            hide_hidden = false,
            hide_by_pattern = {
              "**/.git/*",
              "**/.DS_Store/*",
              "thumbs.db",
              "**/.venv/*",
              "**/.idea/*",
              "**/.nodemodules/*",
            },
          },
        },
      },
    },
  },
}
