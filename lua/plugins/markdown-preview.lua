return {
  "iamcco/markdown-preview.nvim",
  keys = {
    { "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", desc="mdpreview"},
  },
  build = function()
  vim.fn["mkdp#util#install"]()
  end
}
