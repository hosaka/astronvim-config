return function(config)
  -- TODO: remove if check with v3 release
  if vim.g.heirline_bufferline then
    config.tabline[2] = astronvim.status.heirline.make_buflist(astronvim.status.component.tabline_file_info { close_button = false })
  end
  return config
end
