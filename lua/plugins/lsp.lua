return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers.clangd.cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=iwyu",
        "--completion-style=detailed",
        "--function-arg-placeholders",
        "--fallback-style=microsoft",
      }
      return opts
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- "lua-language-server",
        -- "stylua",
        -- "typescript-language-server",
        -- "eslint_d",
        -- "js-debug-adapter",
        -- "eslint-lsp",
        -- "prettier",
        -- "prettierd",
        -- "clangd",
        -- "codelldb",
        -- "clang-format",
        "cpplint",
        -- "ruff-lsp",
        "pyright",
        "debugpy",
        "ruff",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
}
