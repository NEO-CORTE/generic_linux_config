-- ~/.config/nvim/lua/plugins/lazygit.lua

return {
  -- Plugin to integrate Lazygit (must be installed on your system)
  "kdheepak/lazygit.nvim",
  -- Load the plugin when the LazyGit command is called
  cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },

  -- Define the keymap to load and execute the command
  keys = {
    -- Map <leader>gg to the :LazyGit command
    { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
  },

  -- Dependency on plenary.nvim is often required for utility functions
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
