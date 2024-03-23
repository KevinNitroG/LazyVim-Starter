-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "i", "t" }, "jk", "<ESC>", { desc = "Escape insert mode" })
map("n", "<A-j", ":m +1<CR>==")
map("n", "<A-k", ":m -2<CR>==")
map("i", "<A-j", "<ESC>:m +1<CR>==gi")
map("i", "<A-k", "<ESC>:m -2<CR>==gi")
map("v", "<A-j", ":m '>+1<CR>gv=gv")
map("v", "<A-k", ":m '<-2<CR>gv=gv")

-- Delete forward word
map("n", "<C-DEL>", "dw", opts)
map("i", "<C-DEL>", "<space><ESC>ce", opts)

-- Delete current line in insert
-- map("i", "<C-S-BS>", "<ESC>ddi", opts)

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
