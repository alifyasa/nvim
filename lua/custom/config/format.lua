vim.cmd([[
augroup AutoFormat
    autocmd!
    autocmd BufWritePre * :Prettier " lua vim.lsp.buf.format()
augroup END
]])

return {}
