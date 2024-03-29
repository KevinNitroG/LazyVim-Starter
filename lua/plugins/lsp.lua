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
    opts = function(_, opts)
      local ensured_installed = {
        "prettierd",
        "vale",
        "clang-format",
        "cpplint",
        "pyright",
        "debugpy",
        "ruff",
        "powershell-editor-services",
      }
      if opts.ensured_installed then
        vim.list_extend(opts.ensured_installed, ensured_installed )
      else
        opts.ensured_installed = ensured_installed
      end
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
