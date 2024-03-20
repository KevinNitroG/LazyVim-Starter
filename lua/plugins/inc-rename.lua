return {
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
      require("noice").setup({
        presets = { inc_rename = true },
      })
    end,
    vim.keymap.set("n", "<leader>rn", function()
      return ":IncRename " .. vim.fn.expand("<cword>")
    end, { expr = true }),
  },
}
