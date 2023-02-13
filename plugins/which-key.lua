return {
  "folke/which-key.nvim",
  config = function(_, opts)
    -- require "plugins.configs.which-key"(plugin, opts)
    local wk = require "which-key"
    wk.register({
      z = { "<cmd>ZenMode<cr>", "Zen Mode" },
    }, { mode = "n", prefix = "<leader>" })
  end,
  opts = function(_, opts)
    opts.window = {
      border = "none",
    }
    return opts
  end,
}
