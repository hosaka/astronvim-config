return {
  auto_install = vim.fn.executable "tree-sitter" == 1,
  ensure_installed = { "help", "lua", "python", "rust" },
}
