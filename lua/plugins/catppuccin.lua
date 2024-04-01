return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = true,
    opts = {
      flavour = "macchiato",
      background = {
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = true,
      dim_inactive = { enabled = false },
      integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        treesitter = true,
        treesitter_context = true,
        notify = true,
        dashboard = true,
        lsp_trouble = true,
        markdown = true,
        mason = true,
        noice = true,
        neotest = true,
        dap = true,
        dap_ui = true,
        which_key = true,
        indent_blankline = {
          enabled = true,
          scope_color = "blue", -- catppuccin color (eg. `lavender`) Default: text - https://catppuccin.com/palette
          colored_indent_levels = true,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
        },
      },
    },
  },
}
