return {
  {
    "neovim/nvim-lspconfig",
    -- config = function()
    --   require "configs.lspconfig"
    -- end,
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
