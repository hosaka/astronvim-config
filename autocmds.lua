vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  desc = "Enable spell checking for some extensions",
  pattern = { "*.txt", "*.md", "*.tex" },
  command = "setlocal spell",
})

vim.api.nvim_create_autocmd("User", {
  desc = "Hide tabline when only one buffer and one tab is open",
  pattern = "AstroBufsUpdated",
  callback = function()
    -- if there is more than one buffer in the tab, show the tabline
    -- if there are 0 or 1 buffers in the tab, only show the tabline
    -- only if there is more than one vim tab
    local new_showtabline = #vim.t.bufs > 1 and 2 or 1
    if new_showtabline ~= vim.opt.showtabline:get() then vim.opt.showtabline = new_showtabline end
  end,
})
