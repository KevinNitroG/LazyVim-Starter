-- Extend default dap of lazyvim
return {
  "mfussenegger/nvim-dap-python",
  event = { "BufEnter" },
  config = function()
    local os_type = require("utils.get-os")
    local path = {
      Windows = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/Scripts/python.exe",
      Linux = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python",
    }
    require("dap-python").setup(path[os_type])
  end,
}
