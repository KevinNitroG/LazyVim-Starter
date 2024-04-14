return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = "thin",
        show_close_icon = false,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        indicator = {
          style = "underline",
        },
        right_mouse_command = false,
        middle_mouse_command = function(n)
          require("mini.bufremove").delete(n, false)
        end,
      },
    },
  },
}
