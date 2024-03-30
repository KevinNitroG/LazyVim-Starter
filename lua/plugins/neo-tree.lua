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
      },
      sources = { "filesystem" },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = true,
          always_show = {
            ".gitignore",
            ".gitatrribute",
          },
          never_show_by_pattern = {
            "**/.DS_Store",
            "**/thumbs.db",
          },
          hide_by_pattern = {
            "**/.git/*",
            "**/?(.)?(v)env/*",
            "**/.idea/*",
            "**/?(.)node?(_)modules/*",
            "**/*.exe",
          },
        },
      },
    },
  },
}
