-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim.terminal.setup("pwsh")

local o = vim.opt

o.relativenumber = true
o.wrap = true
o.breakindent = true
o.formatoptions = "tcqjl"
o.linebreak = true
o.hlsearch = true
o.tabstop = 4
o.shiftwidth = 4
o.smartcase = true
vim.bo.softtabstop = 4
o.expandtab = true
o.scrolloff = 5
o.sidescrolloff = 5
o.cursorline = false
o.fixendofline = false
o.signcolumn = "yes"
o.fileformats = "unix,dos"
-- o.colorcolumn = "80"

-- Taken from https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/lua/config/options.lua
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.autoindent = true
o.smartindent = true
o.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
o.smarttab = true
o.fileignorecase = false

-- -- Undercurl
-- vim.cmd([[let &t_Cs = "\e[4:3m"]])
-- vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Opacity of background
o.winblend = 0
o.pumblend = 0 -- It can help nvim cmp to transparent background

-- border for diagnostic
vim.diagnostic.config({
  float = { border = "rounded" },
})
