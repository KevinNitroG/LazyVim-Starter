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
      if vim.g.is_windows then
        vim.list_extend(opts.servers.clangd.cmd, {
          "--query-driver=C:/ProgramData/mingw64/mingw64/bin/*",
        })
      end
      opts.lua_ls = vim.tbl_deep_extend("force", opts.lua_ls or {}, {
        settings = {
          lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                [vim.fn.stdpath("data") .. "/lazy/LazyVim/lua/lazyvim"] = true,
                [vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy"] = true,
              },
              maxPreload = 100000,
              preloadFileSize = 10000,
            },
          },
        },
      })
      require("lspconfig.ui.windows").default_options.border = "rounded"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed or {}, {
        "typescript-language-server",
        "actionlint",
        "yaml-language-server",
        "prettierd",
        "json-lsp",
        "markdownlint",
        "marksman",
        "clangd",
        "clang-format",
        "cpplint",
        "pyright",
        "ruff",
        "isort",
        "debugpy",
        "powershell-editor-services",
      })
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
