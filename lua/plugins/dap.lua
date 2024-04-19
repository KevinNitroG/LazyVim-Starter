return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<leader>db", "<cmd> DapToggleBreakpoint <CR>", desc = "Add breakpoint at line" },
      { "<leader>dr", "<cmd> DapContinue <CR>", desc = "Start or continue the debugger" },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    keys = {
      { "<leader>dt", "<cmd> DapUiToogle <CR>", desc = "Toggle debugger UI" },
    },
  },
}
