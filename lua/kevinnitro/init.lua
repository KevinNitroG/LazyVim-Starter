-- set global variable to declare os type
vim.g.os_type = require("kevinnitro.utils.get-os")

-- VM - Vim Visual Multi settings
vim.g.VM_mouse_mappings = 1
vim.g.VM_maps = {
  ["Add Cursor Down"] = "<C-j>",
  ["Add Cursor Up"] = "<C-k>",
}
