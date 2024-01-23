-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("n", "zz", "<cmd>wq!<CR>", { noremap = true })
map("n", "zx", "<cmd>q!<CR>", { noremap = true })

vim.cmd([[
let g:vimtex_quickfix_ignore_filters = [
			\ 'overfull',
			\ 'underfull', ]

let g:vimtex_quickfix_autoclose_after_keystrokes=2
let g:vimtex_quickfix_ignore_filters = [
			\ '.*warning.*',
			\ '.*Warning.*',
			\ '.*hbox.*',
			\]

]])
