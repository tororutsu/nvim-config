-- Set leader key before any mappings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- Clear search highlights with Esc
keymap("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear search highlight" })

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Stay in visual mode while indenting
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")
