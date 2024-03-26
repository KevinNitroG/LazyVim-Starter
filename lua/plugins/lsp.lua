return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.inlay_hints = { enabled = true }
      opts.servers.clangd.cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        -- "--header-insertion=iwyu",
        "--completion-style=detailed",
        "--function-arg-placeholders",
        "--fallback-style=microsoft",
      }
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
        "prettierd",
        -- "jq",
        -- "clangd",
        -- "codelldb",
        "clang-format",
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
  {
    "p00f/clangd_extensions.nvim",
    opts = function(_, opts)
      opts.inlay_hints.inline = true
    end,
  },
}
