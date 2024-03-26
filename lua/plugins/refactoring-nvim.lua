return {
  {
    "ThePrimeagen/refactoring.nvim",
    event = { "BufEnter", "InsertLeave" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      {
        "<leader>rf",
        function()
          require("refactoring").select_refactor()
        end,
        mode = { "v", "n" },
        noremap = true,
        silent = true,
        expr = false,
      },
    },
    config = function()
      require("refactoring").setup()
    end,
  },
}
