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
        "<cmd>RunCode<CR>",
        desc = "RunCode",
      },
      {
        "<leader>tp",
        "<cmd>RunProject<CR>",
        desc = "RunProject",
      },
      {
        "<leader>tc",
        "<cmd>RunClose<CR>",
        desc = "RunClose",
      },
    },
    opts = {
      mode = "better_term",
    },
    config = function()
      local config_file_path = "lua/kevinnitro/configs/code-runner"
      local os_type
      if vim.g.is_windows then
        os_type = "windows"
      else
        os_type = "linux"
      end
      config_file_path = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":p:h")
        .. "/"
        .. config_file_path
        .. "-"
        .. os_type
        .. ".json"
      require("code_runner").setup({
        filetype_path = config_file_path,
        startinsert = true,
      })
    end,
  },
}
