-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("n", "<A-j", ":m +1<CR>==")
map("n", "<A-k", ":m -2<CR>==")
map("i", "<A-j", "<ESC>:m +1<CR>==gi")
map("i", "<A-k", "<ESC>:m -2<CR>==gi")
map("v", "<A-j", ":m '>+1<CR>gv=gv")
map("v", "<A-k", ":m '<-2<CR>gv=gv")

-- DAP
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })
map("n", "<leader>dt", "<cmd> DapUiToogle <CR>", { desc = "Toggle debugger UI" })
