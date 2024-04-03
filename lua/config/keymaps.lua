-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- -- Delete line instead of dd - disable due to vim cannot distinguish <C-S>
-- map("i", "<C-S-BS>", "<ESC>ddi", { noremap = true, silent = true, desc = "Delete line (insert)" })
-- map("n", "<C-S-BS>", "dd", { noremap = true, silent = true, desc = "Delete line (normal)" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "i" }, "jk", "<ESC>", { desc = "Escape insert mode" })
map({ "t" }, "fj", "<ESC>", { desc = "Escape terminal mode" })
-- map("n", "<M-j>", ":m +1<CR>==", opts)
-- map("n", "<M-k>", ":m -2<CR>==", opts)
-- map("i", "<M-j>", "<ESC>:m +1<CR>==gi", opts)
-- map("i", "<M-k>", "<ESC>:m -2<CR>==gi", opts)
-- map("v", "<M-j>", ":m '>+1<CR>gv=gv", opts)
-- map("v", "<M-k>", ":m '<-2<CR>gv=gv", opts)

-- Delete forward word
map("n", "<C-DEL>", "dw", opts)
map("i", "<C-DEL>", "<space><ESC>ce", opts)

-- -- Delete backword word - disable due to vim cannot distinguish BS with h
-- map("n", "<C-BS>", "i<C-w><ESC>", opts)
-- map("i", "<C-BS>", "<C-w>", opts)

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
-- Split window
-- Select all
-- map("n", "<C-a>", "ggVG")
map("n", "ss", ":split<Return>", { noremap = true, silent = true, desc = "Split horizontal" })
map("n", "sv", ":vsplit<Return>", { noremap = true, silent = true, desc = "Split vertical" })
-- Buffer Delete
-- map("n", "<leader>x", "<leader>bd", { desc = "Delete buffer - User" })
-- New tab
map("n", "te", ":tabedit", { noremap = true, silent = true, desc = "Table edit" })

-- -- disable command history keymap
-- map("n", "q:", "<nop>", { noremap = true, desc = "Disable command history keymap" })
