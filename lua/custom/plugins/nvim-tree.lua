vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  keys = {
    { "5", ":NvimTreeToggle<CR>", desc = "Toggle Nvim Tree" },
  },
  config = function()
    require("nvim-tree").setup {
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    }
    vim.api.nvim_create_autocmd({ "QuitPre" }, {
      callback = function() vim.cmd("NvimTreeClose") end,
    })
  end
}
