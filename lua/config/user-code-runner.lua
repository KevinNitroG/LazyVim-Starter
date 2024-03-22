local utils = require("lazyvim.util")

local get_cmd = function()
  local os_type = require("utils.get-os")
  local file = vim.fn.expand("%")
  local file_no_ext = vim.fn.expand("%:r")
  local cmds = {
    Windows = {
      python = { "python", file },
      cpp = { "g++", "-o", file_no_ext, file, "&&", file_no_ext },
      javascript = { "node", file },
    },
    Linux = {
      python = { "python3", file },
      cpp = { "g++", "-o", file_no_ext, file, "&&", file_no_ext },
      javascript = { "node", file },
    },
  }
  -- for lang, _ in pairs(cmds.Windows) do
  --   table.insert(cmds.Windows[lang], "&& pause")
  --   -- cmds.Windows[lang] = { unpack(cmds.Windows[lang]), "&&", "pause" }
  -- end
  -- for lang, _ in pairs(cmds.Linux) do
  --   cmds.Linux[lang] = vim.tbl_extend("force", cmds.Linux[lang], { "&&", "read" })
  -- end
  return cmds[os_type][vim.bo.filetype]
end

local run_code_runner = function()
  utils.terminal(get_cmd(), { esc_esc = false, ctrl_hjkl = true })
end

return run_code_runner
