local configuration = function()
  -- set termguicolors to enable highlight groups
  vim.opt.termguicolors = true

  -- empty setup using defaults
  require("nvim-tree").setup()

  -- OR setup with some options
  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      width = 30,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  })

  vim.keymap.set('n', '<leader>fe', ':NvimTreeToggle<CR>', { desc = "[F]ile [E]xplorer" })
end

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = configuration
}
