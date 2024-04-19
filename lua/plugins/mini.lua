return {
  {
    "echasnovski/mini.pairs",
    --   opts = function(_, opts)
    --     opts.modes = { insert = true, command = true, terminal = true }
    --     for i, _ in ipairs(opts.mappings) do
    --       opts.mappings[i].neigh_pattern = "[^\\].[%s]"
    --     end
    --   end,
    opts = {
      modes = { insert = true, command = true, terminal = true },
      mappings = {
        -- do not pair when there is a word after
        ["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]?.[^%w]" },
        ["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]?.[^%w]" },
        ["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]?.[^%w]" },
        [")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]?.[^%w]" },
        ["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]?.[^%w]" },
        ["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]?.[^%w]" },
        ['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^\\]?.[^%w]", register = { cr = false } },
        ["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a\\].[^%w]", register = { cr = false } },
        ["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\]?.[^%w]", register = { cr = false } },
        ["%"] = { action = "closeopen", pair = "%%", neigh_pattern = "[^\\]?.[^%w]", register = { cr = false } }, -- match for batch scripting
      },
    },
  },
  {
    "echasnovski/mini.bracketed",
    enabled = false,
    event = "BufReadPost",
  },
  {
    "echasnovski/mini.hipatterns",
  },
}
