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
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = false,
          hide_hidden = true,
          always_show = {
            -- ".gitignore",
            -- ".gitatrributes",
            ".github",
          },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
          never_show_by_pattern = {
            "*.exe",
          },
          hide_by_pattern = {
            "*.exe",
            "*LICENSE*",
            "*SECURITY*",
            "yarn.lock",
            "package.json",
            "lazy-lock.json",
            "*.bak",
            ".git",
            ".idea",
            "node_modules",
            ".venv",
            ".vs",
            ".vscode",
          },
        },
      },
    },
  },
}
