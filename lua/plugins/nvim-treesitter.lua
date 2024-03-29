return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "VeryLazy", "BufEnter" },
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "lua",
        "vim",
        "vimdoc",
        "python",
        "requirements",
        "cpp",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "yaml",
        "toml",
        "markdown",
        "gitignore",
        "gitcommit",
        "git_config",
        "gitattributes",
        "git_rebase",
        "ini",
        "json",
        "regex",
      })
    end,
  },
}
