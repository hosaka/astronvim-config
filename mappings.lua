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
      function() require("core.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("core.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    -- ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },

    -- join and preserve cursor position
    ["J"] = { "mzJ`z", desc = "Join lines" },

    -- compiler
    -- ["<leader>m"] = { name = "Compiler" },
  },
  t = {
    -- terminal
    ["<esc><esc>"] = { "<C-\\><C-n>:q<cr>", desc = "Terminal quit" },
  },
  v = {
    ["J"] = { ":m '>+1<cr>gv=gv", desc = "Move selection up" },
    ["K"] = { ":m '<-2<cr>gv=gv", desc = "Move selection down" },
  },
}
