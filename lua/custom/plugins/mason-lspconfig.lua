local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      root_dir = lspconfig.util.find_git_ancestor()
    }
  end
}

return {}
