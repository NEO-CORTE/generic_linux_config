-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<Leader>nt", function()
  vim.fn.feedkeys(":Template ")
end, { desc = "Templates", remap = true })

vim.keymap.set("n", "<Leader>e", function()
  Snacks.explorer()
end, { desc = "Explorer Snacks (cwd)", remap = true })

vim.keymap.set("n", "<Leader>E", function()
  local root = LazyVim.root()
  Snacks.explorer({ cwd = root })
end, { desc = "Explorer Snacks (root dir)", remap = true })

vim.keymap.set("n", "<Leader>fe", function()
  Snacks.explorer()
end, { desc = "Explorer Snacks (cwd)", remap = true })

vim.keymap.set("n", "<Leader>fE", function()
  local root = LazyVim.root()
  Snacks.explorer({ cwd = root })
end, { desc = "Explorer Snacks (root dir)", remap = true })
