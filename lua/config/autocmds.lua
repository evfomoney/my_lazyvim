-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- **************************   for run_key  *******************************

-- python

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F7>",
      ":w<CR>:split<CR>:resize 12<CR>:te time python3 %<CR>i",
      { silent = true, noremap = true }
    )
  end,
})

-- java

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F7>",
      ":w<CR>:split<CR>:resize 12<CR>:te time javac -d out %<CR>i",
      { silent = true, noremap = true }
    )

    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F8>",
      "<ESC>:w<CR>:split<CR>:resize 12<CR>:te java %:t:r<CR>i",
      { silent = true, noremap = true }
    )
  end,
})
