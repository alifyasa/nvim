vim.cmd([[
augroup AutoFormat
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.format()
augroup END
]])

return {}
