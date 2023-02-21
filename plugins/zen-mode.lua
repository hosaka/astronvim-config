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
      width = function() return math.min(120, vim.o.columns * 0.75) end,
      height = 0.95,
      options = {
        list = false,
        number = false,
        relativenumber = false,
        foldcolumn = "0",
        showbreak = "NONE",
        signcolumn = "no",
      },
    },
    plugins = {
      options = {
        enabled = true,
        cmdheight = 1,
        laststatus = 0,
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
