return {
  -- Main plugin for file templating
  "nvimdev/template.nvim",

  -- Load the plugin when the Template command is called
  cmd = { "Template", "TemProject" },

  -- Configuration function
  config = function()
    require("template").setup({
      temp_dir = "~/Templates/",
    })
  end,
}
