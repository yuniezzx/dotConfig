-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.cursorline = true
opt.clipboard = "unnamedplus"
opt.linebreak = true
opt.mouse = "a"
opt.number = true
opt.relativenumber = false
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 4
opt.timeoutlen = 500
opt.wrap = true
