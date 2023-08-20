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
      ":w<CR>:split<CR>:resize 12<CR>:let current_file = fnamemodify(expand('%'), ':~:.:r')<CR>:execute 'te java ' . substitute(current_file, '/', '.', 'g')<CR>i",
      { silent = true, noremap = true }
    )
  end,
})

-- **************************   for Chinese_input  *******************************

-- 在 NeoVim 启动时执行
vim.cmd([[autocmd VimEnter * !ibus engine xkb:us::eng]])

-- 当进入插入模式时执行
-- vim.cmd([[autocmd InsertEnter * :silent !ibus engine libpinyin]])
vim.cmd([[autocmd InsertEnter * :silent !ibus engine xkb:us::eng]])

-- 当退出插入模式时执行
vim.cmd([[autocmd InsertLeave * :silent !ibus engine xkb:us::eng]])

-- 在 NeoVim 关闭时执行
vim.cmd([[autocmd VimLeave * !ibus engine xkb:us::eng]])
