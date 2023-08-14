return {
  "akinsho/bufferline.nvim",
  keys = function()
    return {
      { "<leader>bp", "<cmd>BufferLinePick<CR>", desc = "bufferPeek" },
    }
  end,
  opts = {
    options = {
      always_show_bufferline = true,
    },
  },
}
