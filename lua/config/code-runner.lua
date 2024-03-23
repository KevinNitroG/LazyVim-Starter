local os_type = require("utils.get-os")
local code_runner_config_ft
if os_type == "Windows" then
  code_runner_config_ft = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":p:h") .. "\\code-runner.json"
elseif os_type == "Linux" then
  code_runner_config_ft = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":p:h") .. "/code-runner.json"
end
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
      filetype_path = code_runner_config_ft,
      -- project_path = vim.fn.expand("~/.config/nvim/project_manager.json"),
    })
  end,
}
return config
