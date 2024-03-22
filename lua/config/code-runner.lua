local config = {
  keymap = function()
    vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
  end,
  setup = function()
    require("code_runner").setup({
      filetype_path = vim.fn.fnamemodify(vim.fn.stdpath("config")) .. "code_runner.json",
      -- project_path = vim.fn.expand("~/.config/nvim/project_manager.json"),
    })
  end,
}
return config
