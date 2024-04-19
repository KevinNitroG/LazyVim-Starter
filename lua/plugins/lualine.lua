return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.section_separators = { left = "", right = "" }
      opts.options.component_separators = { left = "|", right = "|" }
      opts.options.always_divide_middle = true
      opts.sections.lualine_a = { { "mode", separator = { right = "" }, right_padding = 2 } }
      opts.sections.lualine_b = { { "branch", separator = { right = "" }, right_padding = 2 } }
      opts.sections.lualine_y = {
        { "progress", separator = { left = "" }, padding = { left = 1, right = 1 } },
      }
      opts.sections.lualine_z = {
        { "location", separator = { left = "" }, padding = { left = 0, right = 1 } },
      }
    end,
  },
}
