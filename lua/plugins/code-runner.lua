return {
  {
    "CRAG666/code_runner.nvim",
    opts = {
      mode = "better_term",
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
    config = function()
      local config_file_path = "lua/kevinnitro/configs/code-runner-Windows.json"
      if vim.g.os_type == "Windows" then
        config_file_path = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":p:h") .. "/" .. config_file_path
      else
        config_file_path = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":p:h") .. "/" .. config_file_path
      end
      require("code_runner").setup({
        filetype_path = config_file_path,
        startinsert = true,
      })
    end,
  },
}
