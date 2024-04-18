return {
  {
    "akinsho/bufferline.nvim",
    dependencies = { "catppuccin" },
    opts = {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        separator_style = "thin",
        show_close_icon = false,
        always_show_bufferline = true,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        -- indicator = {
        --   style = "underline",
        -- },
        -- right_mouse_command = false,
        middle_mouse_command = function(n)
          require("mini.bufremove").delete(n, false)
        end,
      },
    },
  },
}
