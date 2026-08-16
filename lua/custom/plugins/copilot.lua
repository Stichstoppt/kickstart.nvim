vim.g.copilot_enabled = false

vim.pack.add {
  'https://github.com/github/copilot.vim',
}

vim.keymap.set('n', '<leader>cp', function()
  vim.g.copilot_enabled = not vim.g.copilot_enabled
  vim.cmd 'Copilot status'
end, { desc = 'Toggle Copilot' })
