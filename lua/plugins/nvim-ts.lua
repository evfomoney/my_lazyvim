return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add TS
    vim.list_extend(opts.ensure_installed, {})
  end,
}
