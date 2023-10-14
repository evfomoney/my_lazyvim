-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

local Util = require("lazyvim.util")
local map = vim.keymap.set
local opt = { noremap = true, silent = true }

--****************** basic **************************
map("i", ",a", "<ESC>", opt)

map("n", "s", "", opt)
map("n", "sh", ":split<CR>", opt)
map("n", "sv", ":vsplit<CR>", opt)

-- ****** sitch the window and buffers change key: ctrl and shift
-- Move to window using the <ctrl> hjkl keys
map("n", "<S-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<S-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<S-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<S-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "<C-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "<C-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
  map("n", "<C-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "<C-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
end
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
