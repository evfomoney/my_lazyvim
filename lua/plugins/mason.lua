return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shfmt",

      -- for python
      "flake8",
      -- "pyright", // unfriendly to machine study

      -- for java
      "jdtls",
      "google-java-format",
    },
  },
}
