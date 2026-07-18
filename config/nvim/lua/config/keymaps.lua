-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Insert mode で `jj` と入力したら Normal mode に戻る。
keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- 旧設定で手になじんでいた操作だけ移す。
-- <Space> や s* 系のキーマップは LazyVim の leader や通常操作と重なりやすいので、まだ移さない。

-- 1 文字削除したときに、削除した文字で yank 内容を上書きしない。
keymap.set("n", "x", '"_x', { desc = "Delete character without yanking" })

-- カーソル上または直後の数値を 1 増やす。
keymap.set("n", "+", "<C-a>", { desc = "Increment number" })

-- カーソル上または直後の数値を 1 減らす。
keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })

-- ファイル全体を選択する。
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
