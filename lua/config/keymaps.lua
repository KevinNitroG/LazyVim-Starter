-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "i" }, "jk", "<ESC>", { noremap = true, silent = true, desc = "Escape insert mode" })

-- delete forward word
map("n", "<C-DEL>", "dw", { noremap = true, silent = true, desc = "Delete forward word" })
map("i", "<C-DEL>", "<space><ESC>ce", { noremap = true, silent = true, desc = "Delete forward word" })

-- switch buffer
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { noremap = true, silent = true, desc = "Prev Buffer" })
map("n", "<Tab>", "<cmd>bnext<cr>", { noremap = true, silent = true, desc = "Next Buffer" })

-- DAP
map(
  "n",
  "<leader>db",
  "<cmd> DapToggleBreakpoint <CR>",
  { noremap = true, silent = true, desc = "Add breakpoint at line" }
)
map(
  "n",
  "<leader>dr",
  "<cmd> DapContinue <CR>",
  { noremap = true, silent = true, desc = "Start or continue the debugger" }
)
map("n", "<leader>dt", "<cmd> DapUiToogle <CR>", { noremap = true, silent = true, desc = "Toggle debugger UI" })

-- Taken from https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/lua/config/keymaps.lua
-- map("n", "<C-a>", "ggVG")
map("n", "ss", "<cmd>split<Return>", { noremap = true, silent = true, desc = "Split horizontal" })
map("n", "sv", "<cmd>vsplit<Return>", { noremap = true, silent = true, desc = "Split vertical" })
map("n", "te", "<cmd>tabedit", { noremap = true, silent = true, desc = "Table edit" })
