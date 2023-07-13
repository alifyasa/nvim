-- Set keybinds for OS Clipboard
vim.keymap.set({ 'n', 'v' }, '<C-C>', '"+y')
vim.keymap.set({ 'i', 'v' }, '<C-V>', '"+p')

return { }
