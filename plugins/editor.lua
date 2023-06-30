return {
  {
    "echasnovski/mini.move",
    keys = {
      { "<M-l>", mode = { "n", "v" } },
      { "<M-k>", mode = { "n", "v" } },
      { "<M-j>", mode = { "n", "v" } },
      { "<M-h>", mode = { "n", "v" } },
    },
    opts = {},
  },
  {
    "arsham/indent-tools.nvim",
    dependencies = { "arsham/arshlib.nvim" },
    event = "User AstroFile",
    config = function() require("indent-tools").config {} end,
  },
  {
    "folke/todo-comments.nvim",
    event = "User AstroFile",
    cmd = { "TodoTrouble", "TodoTelescope", "TodoLocList", "TodoQuickFix" },
    opts = {},
  },
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    opts = {
      use_diagnostic_signs = true,
      action_keys = {
        close = { "q", "<esc>" },
        cancel = "<c-e>",
      },
    },
  },
  {
    "folke/zen-mode.nvim",
    cmd = { "ZenMode" },
    dependencies = { "folke/twilight.nvim" },
    opts = {
      window = {
        -- height and width can be:
        -- * an absolute number of cells when > 1
        -- * a percentage of the width / height of the editor when <= 1
        -- * a function that returns the width or the height
        width = function() return math.min(140, vim.o.columns * 0.75) end,
        height = 1,
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
  },
}
