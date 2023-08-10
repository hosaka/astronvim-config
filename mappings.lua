local astro_utils = require "astronvim.utils"
return {
  n = {
    -- disable default bindings
    ["<C-q>"] = false,
    ["<C-s>"] = false,
    -- ["<C-Up>"] = false,
    -- ["<C-Down>"] = false,
    -- ["<C-Left>"] = false,
    -- ["<C-Right>"] = false,

    -- better buffer navigation
    ["]b"] = false,
    ["[b"] = false,
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    ["<Tab>"] = {
      function()
        if #vim.t.bufs > 1 then
          require("telescope.builtin").buffers { sort_mru = true, ignore_current_buffer = true }
        else
          astro_utils.notify "No other buffers open"
        end
      end,
      desc = "Switch buffers",
    },

    -- scaling up/down
    ["<leader>="] = {
      function()
        if vim.g.neovide then vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.25 end
      end,
      desc = "Scale up",
    },
    ["<leader>-"] = {
      function()
        if vim.g.neovide then vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1 / 1.25 end
      end,
      desc = "Scale down",
    },

    -- neogit
    ["<leader>gG"] = { function() require("neogit").open {} end, desc = "Neogit" },

    ["<leader>s"] = { desc = "󰛔 Search/Replace" },
    ["<leader>ss"] = { function() require("spectre").toggle() end, desc = "Toggle Spectre" },
    ["<leader>sf"] = { function() require("spectre").open_file_search() end, desc = "Spectre (current file)" },
    ["<leader>sw"] = {
      function() require("spectre").open_visual { select_word = true } end,
      desc = "Spectre (current word)",
    },

    ["<leader>x"] = { desc = "󰒡 Trouble" },
    ["<leader>xx"] = { "<cmd>TroubleTogle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
    ["<leader>xX"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
    ["<leader>xT"] = { "<cmd>TodoTrouble<cr>", desc = "TODOs (Trouble)" },

    -- join and preserve cursor position
    ["J"] = { "mzJ`z", desc = "Join lines" },

    -- ["<leader>;"] = { desc = "AI Assistant" },
    -- ["<leader>;;"] = {
    --   function()
    --     vim.cmd.Codeium(vim.g.codeium_enabled == 0 and "Enable" or "Disable")
    --     astro_utils.notify("Codeium " .. (vim.g.codeium_enabled == 0 and "Disabled" or "Enabled"))
    --   end,
    --   desc = "Toggle Global",
    -- },
    -- ["<leader>;b"] = {
    --   function()
    --     vim.cmd.Codeium(vim.b.codeium_enabled == 0 and "EnableBuffer" or "DisableBuffer")
    --     astro_utils.notify("Codeium (buffer) " .. (vim.b.codeium_enabled == 0 and "Disabled" or "Enabled"))
    --   end,
    --   desc = "Toggle Buffer",
    -- },
  },
  t = {
    -- terminal
    ["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" },
  },
  v = {},
}
