return {
  {
    "CRAG666/code_runner.nvim",
    cmd = {
      "RunCode",
      "RunFile",
      "RunProject",
      "RunClose",
      "CRFileType",
      "CRProjects",
    },
    keys = {
      {
        "<leader>r",
        ":RunCode<CR>",
        desc = "RunCode",
      },
      {
        "<leader>rp",
        ":RunProject<CR>",
        desc = "RunProject",
      },
      {
        "<leader>rc",
        ":RunClose<CR>",
        desc = "RunClose",
      },
    },
    opts = {
      mode = "better_term",
    },
    config = function()
      local config_file_path = "lua/kevinnitro/configs/code-runner"
      config_file_path = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":p:h")
        .. "/"
        .. config_file_path
        .. "-"
        .. vim.g.os_type
        .. ".json"
      require("code_runner").setup({
        filetype_path = config_file_path,
        startinsert = true,
      })
    end,
  },
}
