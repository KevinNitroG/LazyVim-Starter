return {
  {
    "mfussenegger/nvim-dap",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  },
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      local path = require("mason-registry").get_package("debugpy"):get_install_path()
      if vim.g.is_windows then
        require("dap-python").setup(path .. "/venv/Scripts/python.exe")
      else
        require("dap-python").setup(path .. "/venv/bin/python")
      end
    end,
  },
}
