local M = {}

local nmap = function(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { desc = desc })
end

M.map_basics = function()
  vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

  vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
  vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

  local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
  vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
      vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
  })

  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

  vim.keymap.set('n', '<C-h>', '<C-w>h')
  vim.keymap.set('n', '<C-l>', '<C-w>l')
  vim.keymap.set('n', '<C-k>', '<C-w>k')
  vim.keymap.set('n', '<C-j>', '<C-w>j')

  vim.keymap.set('n', '<S-l>', ':bnext<CR>')
  vim.keymap.set('n', '<S-h>', ':bprev<CR>')
  vim.keymap.set('n', '<leader>cb', ':bdelete<CR>', { desc = "[C]lose [B]uffer" })
end

return M
