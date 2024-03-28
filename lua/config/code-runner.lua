local config = {
  keymap = function()
    vim.keymap.set("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
    -- vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
    -- vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
    -- vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
    -- vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
  end,
  setup = function()
    local config_file_path
    if vim.g.os_type == "Windows" then
      config_file_path = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":p:h") .. "/code-runner-Windows.json"
    else
      config_file_path = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":p:h") .. "/code-runner-Linux.json"
    end
    require("code_runner").setup({
      filetype_path = config_file_path,
      startinsert = true,
    })
  end,
}
return config
