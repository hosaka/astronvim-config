return {
  opt = {
    list = true, -- show whitespace characters
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    showbreak = "↪ ",
    showtabline = (vim.t.bufs and #vim.t.bufs > 1) and 2 or 1,
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    splitkeep = "screen",
    spell = false,       -- sets vim.opt.spell
    wrap = false,        -- sets vim.opt.wrap
  },
  g = {
    mapleader = " ",          -- sets vim.g.mapleader

    icons_enabled = true,     -- disable if no nerd font is available, requires :PackerSync
    resession_enabled = true, -- enable experimental resession.nvim session management
  },
}
