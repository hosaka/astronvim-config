return {
  -- You can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },
  ["ggandor/leap.nvim"] = {
    opt = true,
    config = function() require "user.plugins.leap" end,
  },
  ["folke/zen-mode.nvim"] = {
    cmd = { "ZenMode" },
    config = function() require("user.plugins.zen-mode").config() end,
  },
}
