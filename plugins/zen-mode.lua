return {
  "folke/zen-mode.nvim",
  cmd = { "ZenMode" },
  dependencies = { "folke/twilight.nvim" },
  opts = {
    window = {
      -- height and width can be:
      -- * an absolute number of cells when > 1
      -- * a percentage of the width / height of the editor when <= 1
      -- * a function that returns the width or the height
      width = 120,
      height = 0.95,
    },
    plugins = {
      options = {
        enabled = true,
      },
      twilight = { enabled = true },
      gitsignts = { enabled = false },
    },
    -- callback where you can add custom code when the Zen window opens
    -- opts.on_open = function(win)
    -- end,
    -- callback where you can add custom code when the Zen window closes
    -- opts.on_close = function()
    -- end,
  },
}
