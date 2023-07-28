return {
  {
    "williamboman/mason.nvim",
    opts = { PATH = "append" },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "pyright", "rust_analyzer", "yamlls", "marksman" },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = { "stylua", "black", "isort", "shfmt", "shellcheck" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "bash", "python" },
    },
  },
}
