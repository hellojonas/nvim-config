local configuration = function()
  require('bufferline').setup {
    options = {
      offsets = {
        {
          filetype = "NvimTree",
        }
      },
      diagnostics = "nvim_lsp",
    },
  }
end

return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  -- tag = 'v3.*',
  config = configuration
}
