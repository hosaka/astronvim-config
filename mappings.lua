return {
  n = {
    -- first key is the mode
    -- second key is the lefthand side of the map
    -- disable default bindings
    ["<C-q>"] = false,
    ["<C-s>"] = false,

    -- mappings seen under group name "Buffer"
    -- ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },

    ["J"] = { "mzJ`z", desc = "Join lines" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["J"] = { ":m '>+1<cr>gv=gv", desc = "Move selection up" },
    ["K"] = { ":m '<-2<cr>gv=gv", desc = "Move selection down" },
  },
}
