return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  keys = {
    {
      "<leader>cP",
      function()
        require("copilot.suggestion").toggle_auto_trigger()
      end,
      mode = "n",
      desc = "Toogle Copilot auto suggestion",
    },
  },
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = false,
      debounce = 75,
      keymap = {
        accept = false,
        dismiss = "<M-l>",
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
      },
    },
  },
}
