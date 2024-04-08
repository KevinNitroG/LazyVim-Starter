return {
  {
    "CRAG666/betterTerm.nvim",
    enabled = true,
    keys = {
      {
        "<leader>to",
        function()
          require("betterTerm").open()
        end,
        mode = { "n", "t" },
        desc = "Open terminal",
      },
      {
        "<leader>ts",
        function()
          require("betterTerm").select()
        end,
        mode = { "n", "t" },
        desc = "Select terminal",
      },
      {
        "<leader>tn",
        function()
          local current = 2
          require("betterTerm").open(current)
          current = current + 1
        end,
        mode = { "n", "t" },
        desc = "New terminal",
      },
      {
        "<leader>te",
        function()
          require("betterTerm").send(
            require("code_runner.commands").get_filetype_command(),
            1,
            { clean = false, interrupt = true }
          )
        end,
        mode = { "n", "t" },
        desc = "Execute file",
      },
    },
  },
}
