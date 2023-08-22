return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shfmt",

      -- for python
      "flake8",
      "pyright",

      -- for java
      "jdtls",
      "google-java-format",
    },
  },
}
