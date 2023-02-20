return {
  "folke/twilight.nvim",
  cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
  config = function(_, opts)
    -- see: https://github.com/folke/twilight.nvim
    require("twilight").setup {}
  end,
}
