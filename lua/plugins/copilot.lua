-- return {
--   "copilot.lua",
--
--
-- }
return {
  "zbirenbaum/copilot.lua",
  -- cmd = "Copilot",
  -- event = "InsertEnter",
  keys = {
    {
      "<leader>cp",
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
        accept = "<C-j>",
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<M-j>",
      },
    },
    config = function()
      require("copilot").setup({})
      vim.g.copilot_assume_mapped = true
    end,
  },
}
