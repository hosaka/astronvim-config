return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.auto_install = vim.fn.executable "tree-sitter" == 1
    opts.ensure_installed = { "help", "lua", "python", "rust", "yaml", "dockerfile" }
    return opts
  end,
}
