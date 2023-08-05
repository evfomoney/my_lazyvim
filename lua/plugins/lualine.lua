local lualine_choice = (vim.o.background == "light" and "iceberg_light" or "codedark")

return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local icons = require("lazyvim.config").icons
    local Util = require("lazyvim.util")

    return {
      options = {
        theme = lualine_choice,
        globalstatus = true,
        component_separators = { left = "|", right = "|" },
        section_separators = { left = " ", right = "" },
        disabled_filetypes = { statusline = { "dashboard", "alpha" } },
      },
      sections = {
        lualine_c = {
          { "filename", path = 1, symbols = { modified = " [+]] ", readonly = "", unnamed = "" } },
        },
        lualine_x = {
          -- stylua: ignore
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
            color = Util.fg("Statement"),
          },
          -- stylua: ignore
          {
            function() return require("noice").api.status.mode.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
            color = Util.fg("Constant"),
          },
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = Util.fg("Debug"),
          },
          { require("lazy.status").updates, cond = require("lazy.status").has_updates, color = Util.fg("Special") },
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
          },
        },
      },
      extensions = { "neo-tree", "lazy" },
    }
  end
}
