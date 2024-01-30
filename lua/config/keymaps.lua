-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("n", "zz", "<cmd>wq!<CR>", { noremap = true })
map("n", "zx", "<cmd>q!<CR>", { noremap = true })
map("v", "s", "c", {})
vim.keymap.set("n", "s", "cl", { noremap = true })
vim.keymap.set("v", "s", "c", { noremap = true })
vim.keymap.set("n", "m", "<cmd>w!<cr>", { noremap = true })
vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
vim.keymap.set("v", "<C-/>", "gc", { remap = true })

vim.cmd([[

set nocompatible
set runtimepath^=~/.local/share/nvim/lazy/vimtex/
set runtimepath^=~/.local/share/nvim/lazy/vimtex/after
filetype plugin indent on
syntax enable

let g:vimtex_quickfix_ignore_filters = [
			\ 'overfull',
			\ 'underfull', ]

let g:vimtex_quickfix_autoclose_after_keystrokes=2
let g:vimtex_quickfix_ignore_filters = [
			\ '.*warning.*',
			\ '.*Warning.*',
			\ '.*hbox.*',
			\]

let g:vimtex_view_method = 'zathura'

]])
