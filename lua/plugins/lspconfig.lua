return {
  "neovim/nvim-lspconfig",
  opts = {
    -- options for vim.diagnostic.config()
    diagnostics = {
      underline = true,
      update_in_insert = false,
    },
    inlay_hints = {
      enabled = false,
    },
    -- add any global capabilities here
    capabilities = {},
    -- Enable this to show formatters used in a notification
    -- Useful for debugging formatter issues
    format_notify = false,
    -- LSP Server Settings
    servers = {
      jsonls = {},
      -- [1]
      pyright = {
        settings = {
          pyright = {
            autoImportCompletion = true,
            python = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
        root_dir = function()
          return vim.fn.getcwd()
        end,
      },
      -- [2]
      jdtls = {
        root_dir = function()
          return vim.fn.getcwd()
        end,

      },
    },
  }
}
