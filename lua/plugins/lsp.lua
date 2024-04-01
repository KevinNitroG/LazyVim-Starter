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
        vim.list_extend(opts.ensured_installed, ensured_installed)
      else
        opts.ensured_installed = ensured_installed
      end
      opts.ui = {
        border = "rounded",
        height = 0.7,
        width = 0.7,
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
