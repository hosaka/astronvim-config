return {
  "folke/which-key.nvim",
  config = function(plugin, opts)
    require "plugins.configs.which-key" (plugin, opts)
    local wk = require "which-key"
    wk.register({
      z = { "<cmd>ZenMode<cr>", "Zen Mode" },
    }, { mode = "n", prefix = "<leader>" })
  end,
  opts = {
    window = {
      border = "none",
    },
  },
}
