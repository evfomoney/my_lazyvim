return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jsonls = {},

      -- -- python // there has some problem for me: the ls is too strict for me
      -- pyright = {
      --   settings = {
      --     pyright = {
      --       autoImportCompletion = true,
      --       python = {
      --         analysis = {
      --           autoSearchPaths = true,
      --           useLibraryCodeForTypes = true,
      --         },
      --       },
      --     },
      --   },
      --   root_dir = function()
      --     return vim.fn.getcwd()
      --   end,
      -- },

      jedi_language_server = {
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
