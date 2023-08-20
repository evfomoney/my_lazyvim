-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

--****************** basic **************************
-- map("i", ",a", "<ESC>", opt) ： because the im-select : the <ESC> has too much additional power
