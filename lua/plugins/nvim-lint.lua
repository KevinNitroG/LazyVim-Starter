return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      python = { "ruff" },
      cpp = { "cpplint" },
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      markdown = { "vale" },
      latex = { "vale" },
    },
  },
}
