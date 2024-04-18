return {
  {
    "echasnovski/mini.bracketed",
    event = "BufReadPost",
  },
  {
    "echasnovski/mini.hipatterns",
    enabled = true,
    event = "BufReadPost",
    opts = {
      highlighters = {
        fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
        hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
        todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
        note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
      },
    },
    config = function(_, opts)
      local hipatterns = require("mini.hipatterns")
      opts = vim.tbl_deep_extend("force", opts, {
        hex_color = hipatterns.gen_highlighter.hex_color(),
      })
      hipatterns.setup(opts)
    end,
  },
}
