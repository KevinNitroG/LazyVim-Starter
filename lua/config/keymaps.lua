-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "i", "t" }, "jk", "<ESC>", { desc = "Escape insert mode" })
map("n", "<M-j>", ":m +1<CR>==")
map("n", "<M-k>", ":m -2<CR>==")
map("i", "<M-j>", "<ESC>:m +1<CR>==gi")
map("i", "<M-k>", "<ESC>:m -2<CR>==gi")
map("v", "<M-j>", ":m '>+1<CR>gv=gv")
map("v", "<M-k>", ":m '<-2<CR>gv=gv")

-- Delete forward word
map("n", "<C-DEL>", "dw", opts)
map("i", "<C-DEL>", "<space><ESC>ce", opts)

-- Delete backword word
map("n", "<C-BS>", "i<C-w><ESC>", opts)
map("i", "<C-BS>", "<C-w>", opts)

-- DAP
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })
map("n", "<leader>dt", "<cmd> DapUiToogle <CR>", { desc = "Toggle debugger UI" })

-- Taken from https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/lua/config/keymaps.lua
-- Split window
-- Select all
-- map("n", "<C-a>", "ggVG")
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)
-- Buffer Delete
-- map("n", "<leader>x", "<leader>bd", { desc = "Delete buffer - User" })
-- New tab
map("n", "te", ":tabedit")
