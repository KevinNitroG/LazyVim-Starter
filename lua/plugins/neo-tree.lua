return {
  {
    "nvim-neo-tree/neo-tree.nvim",
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
            hide_by_name = {
              ".git",
              ".DS_Store",
              "thumbs.db",
              ".venv",
              ".idea",
              ".nodemodules",
            },
            never_show = {},
          },
        },
      },
    },
  },
}
