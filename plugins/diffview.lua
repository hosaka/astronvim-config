return {
  "sindrets/diffview.nvim",
  event = "User AstroGitFile",
  opts = function()
    local actions = require "diffview.actions"
    local utils = require "astronvim.utils"

    local prefix = "<leader>D"
    utils.set_mappings {
      n = {
        [prefix] = { name = "Diff View" },
        [prefix .. "<cr>"] = { "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
        [prefix .. "h"] = { "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
        [prefix .. "H"] = { "<cmd>DiffviewFileHistory<cr>", desc = "Branch History" },
        [prefix .. "q"] = { "<cmd>DiffviewClose<cr>", desc = "Quit Diffview" },
      },
    }

    return {
      enhanced_diff_h1 = true,
      view = {
        merge_tool = { layout = "diff3_mixed" },
      },
    }
  end,
}
