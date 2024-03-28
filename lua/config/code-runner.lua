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
    require("code_runner").setup({
      filetype_path = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":p:h") .. "/code-runner.json",
      startinsert = true,
    })
    -- register whichkey group name for code_runner
    require("plugins.configs.whichkey")
    local present, wk = pcall(require, "which-key")
    if not present then
      return
    end
    wk.register({
      ["<leader>"] = {
        r = { name = "code runner" },
      },
    })
  end,
}
return config
