return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  event = "InsertEnter",
  opts = function(_, opts)
    table.insert(opts.sources, { name = "emoji" })
    -- local cmp = require("cmp")
    -- opts.mapping = vim.tbl_extend("force", opts.mapping, {
    -- ["<CR>"] = cmp.config.disable,
    -- ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    -- ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    -- })
  end,
}
