-- Add an autocmd that triggers the Format command before saving
vim.cmd([[
  augroup AutoFormat
    autocmd!
    autocmd BufWritePre * :Prettier " lua vim.lsp.buf.format()
  augroup END
]])

return {}
