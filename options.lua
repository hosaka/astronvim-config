return {
  -- set vim options here (vim.<first_key>.<second_key> = value)
  opt = {
    foldenable = false,
    foldexpr = "nvim_treesitter#foldexpr()", -- set treesitter based folding
    foldmethod = "expr",
    list = true, -- show whitespace characters
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    showbreak = "↪ ",
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    spell = false, -- sets vim.opt.spell
    wrap = false, -- sets vim.opt.wrap
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader

    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
  },
}
