return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jsonls = {},

      -- python
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

      -- java
      jdtls = {
        root_dir = function()
          return vim.fn.getcwd()
        end,
      },
    },
  },
}
