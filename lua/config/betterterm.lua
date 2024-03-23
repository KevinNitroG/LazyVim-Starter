local config = {
  keymap = function()
    local betterTerm = require("betterTerm")
    -- toggle firts term
    vim.keymap.set({ "n", "t" }, "<leader>tt", betterTerm.open, { desc = "Open / Toggle terminal" })
    -- Select term focus
    vim.keymap.set({ "n" }, "<leader>ts", betterTerm.select, { desc = "Select terminal" })
    -- Create new term
    local current = 2
    vim.keymap.set({ "n" }, "<leader>tn", function()
      betterTerm.open(current)
      current = current + 1
    end, { desc = "New terminal" })
  end,
}
return config