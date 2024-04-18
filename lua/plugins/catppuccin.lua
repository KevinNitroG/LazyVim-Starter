return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = true,
    opts = {
      default_integrations = true,
      flavour = "auto",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
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
        symbols_outline = true,
        dap = true,
        dap_ui = true,
        which_key = true,
        rainbow_delimiters = true,
        mini = {
          enabled = true,
          indentscope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
        },
        telescope = {
          enabled = true,
          -- style = "nvchad",
        },
        illuminate = {
          enabled = true,
          lsp = false,
        },
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
