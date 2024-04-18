return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
      python = {
        "ruff_fix",
        "ruff_format",
        -- "isort",
      },
      cpp = { "clang_format" },
      c = { "clang_format" },
      ["c#"] = { "clang_format" },
      lua = { "stylua" },
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      angular = { "prettierd" },
      css = { "prettierd" },
      flow = { "prettierd" },
      graphql = { "prettierd" },
      html = { "prettierd" },
      json = { "prettierd" },
      jsx = { "prettierd" },
      less = { "prettierd" },
      markdown = { "prettierd" },
      scss = { "prettierd" },
      vue = { "prettierd" },
      yaml = { "prettierd" },
    })
  end,
}
