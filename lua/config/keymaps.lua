-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- better move in insert mode from NvChad: https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua
map("i", "<C-b>", "<ESC>^i", { noremap = true, silent = true, desc = "Move Beginning of line" })
map("i", "<C-e>", "<End>", { noremap = true, silent = true, desc = "Move End of line" })
map("i", "<C-h>", "<Left>", { noremap = true, silent = true, desc = "Move Left" })
map("i", "<C-l>", "<Right>", { noremap = true, silent = true, desc = "Move Right" })
map("i", "<C-j>", "<Down>", { noremap = true, silent = true, desc = "Move Down" })
map("i", "<C-k>", "<Up>", { noremap = true, silent = true, desc = "Move Up" })

-- beter save file
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { noremap = true, silent = true, desc = "Save file" })

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "i" }, "jk", "<ESC>", { noremap = true, silent = true, desc = "Escape insert mode" })

-- delete forward word
map("n", "<C-DEL>", "dw", { noremap = true, silent = true, desc = "Delete forward word" })
map("i", "<C-DEL>", "<space><ESC>ce", { noremap = true, silent = true, desc = "Delete forward word" })

-- switch buffer
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { noremap = true, silent = true, desc = "Prev Buffer" })
map("n", "<Tab>", "<cmd>bnext<cr>", { noremap = true, silent = true, desc = "Next Buffer" })

-- Taken from https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/lua/config/keymaps.lua
-- map("n", "<C-a>", "ggVG")
map("n", "ss", "<cmd>split<Return>", { noremap = true, silent = true, desc = "Split horizontal" })
map("n", "sv", "<cmd>vsplit<Return>", { noremap = true, silent = true, desc = "Split vertical" })
