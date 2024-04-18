vim.g.is_windows = vim.fn.has("win32") ~= 0

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
