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
      completion = cmp.config.window.bordered({
        winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
      }),
      documentation = require("cmp").config.window.bordered({
        winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
      }),
    }
    -- table.insert(opts.sources, { name = "emoji" })
    opts.mapping = vim.tbl_extend("force", opts.mapping, require("config.supertab"))
  end,
}
