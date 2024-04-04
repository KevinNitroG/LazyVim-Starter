-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim.terminal.setup("pwsh")

vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.formatoptions = "tcqjl"
vim.opt.linebreak = true
vim.opt.hlsearch = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartcase = true
vim.bo.softtabstop = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.fixendofline = false

-- Taken from https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/lua/config/options.lua
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.fileignorecase = false

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Set background of float border to none
-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "None" })

-- Opacity of background
vim.opt.winblend = 0
vim.opt.pumblend = 0 -- It can help nvim cmp to transparent background
