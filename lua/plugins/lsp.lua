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
        "--fallback-style=Microsoft",
      }
      if vim.g.os_type == "Windows" then
        vim.list_extend(opts.servers.clangd.cmd, {
          "--query-driver=C:/ProgramData/mingw64/mingw64/bin/*",
        })
      end
      require("lspconfig.ui.windows").default_options.border = "rounded"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      local user_ensure_installed = {
        "typescript-language-server",
        "yaml-language-server",
        "prettierd",
        "json-lsp",
        "markdownlint",
        "clangd",
        "clang-format",
        "cpplint",
        "pyright",
        "ruff",
        "isort",
        "debugpy",
        "powershell-editor-services",
      }
      vim.list_extend(opts.ensure_installed, user_ensure_installed)
      opts.ui = {
        border = "rounded",
        height = 0.8,
        width = 0.8,
      }
    end,
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
