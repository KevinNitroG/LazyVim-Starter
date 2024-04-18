return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    -- "hrsh7th/cmp-emoji",
    "zbirenbaum/copilot.lua",
    "danymat/neogen",
    "L3MON4D3/LuaSnip",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.window = {
      completion = cmp.config.window.bordered(),
      documentation = require("cmp").config.window.bordered(),
    }
    -- table.insert(opts.sources, { name = "emoji" })
    opts.mapping = vim.tbl_deep_extend("force", opts.mapping, require("config.supertab"))
  end,
}
