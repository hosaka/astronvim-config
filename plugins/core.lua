local get_icon = require("astronvim.utils").get_icon

return {
  { "goolord/alpha-nvim", enabled = false },
  { "max397574/better-escape.nvim", enabled = false },

  {
    "akinsho/toggleterm.nvim",
    opts = {
      terminal_mappings = false,
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signcolumn = true,
      current_line_blame_opts = { ignore_whitespace = true },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      sources = {
        "filesystem",
        "git_status",
      },
      source_selector = {
        sources = {
          { source = "filesystem", display_name = get_icon "FolderClosed" .. " File" },
          { source = "git_status", display_name = get_icon "Git" .. " Git" },
        },
      },
      filesystem = {
        filtered_items = {
          always_show = { ".github", ".env", ".gitlab-ci.*" },
        },
      },
    },
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"
      opts.statusline[3] = status.component.file_info { filetype = {}, filename = false }

      local path_func = status.provider.filename { modify = ":.:h", fallback = "" }
      opts.winbar[1][1] = status.component.separated_path { path_func = path_func }
      opts.winbar[2] = {
        status.component.separated_path { path_func = path_func },
        status.component.file_info { -- add file_info to breadcrumbs
          file_icon = { hl = status.hl.filetype_color, padding = { left = 0 } },
          file_modified = false,
          file_read_only = false,
          hl = status.hl.get_attributes("winbar", true),
          surround = false,
          update = "BufEnter",
        },
        status.component.breadcrumbs {
          icon = { hl = true },
          hl = status.hl.get_attributes("winbar", true),
          prefix = true,
          padding = { left = 0 },
        },
      }
      return opts
    end,
  },
}
