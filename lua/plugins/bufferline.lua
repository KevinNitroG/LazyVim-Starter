return {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "catppuccin" },
    opts = {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = true,
        always_show_bufferline = true,
        -- hover = {
        --   enabled = true,
        --   delay = 200,
        --   reveal = { "close" },
        -- },
        -- indicator = {
        --   style = "underline",
        -- },
        -- right_mouse_command = false,
        middle_mouse_command = function(n)
          require("mini.bufremove").delete(n, false)
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "center",
          },
          {
            filetype = "undotree",
            text = "Undo Tree",
            text_align = "center",
          },
          {
            filetype = "trouble",
            text = "Trouble",
            text_align = "center",
          },
        },
      },
    },
  },
}
