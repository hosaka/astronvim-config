return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji",
  },
  -- override options table used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts is the default options table
    local cmp = require "cmp"
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 750 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
      { name = "emoji", priority = 225 },
    }
    -- return the new table to be used
    return opts
  end,
}
