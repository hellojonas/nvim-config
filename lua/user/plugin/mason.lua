local configure = function()
  local servers = {
    lua_ls = {
      Lua = {
        workspace = { checkThirdParty = false },
        telemetry = { enable = false },
      },
    },
  }

  local lsp = require('user/lsp')

  -- Setup neovim lua configuration
  require('neodev').setup()

  -- Setup mason so it can manage external tooling
  require('mason').setup()

  -- Ensure the servers above are installed
  local mason_lspconfig = require 'mason-lspconfig'

  mason_lspconfig.setup {
    ensure_installed = vim.tbl_keys(servers),
  }

  mason_lspconfig.setup_handlers {
    function(server_name)
      require('lspconfig')[server_name].setup {
        capabilities = lsp.client_cababilities,
        on_attach = lsp.on_attach,
        settings = servers[server_name],
      }
    end,
  }
end

return {
  -- LSP Configuration & Plugins
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    { 'j-hui/fidget.nvim', opts = {} },
    'folke/neodev.nvim',
  },
  config = configure
}
