require 'utils'

vim.pack.add { { src = gh 'stevearc/oil.nvim' } }
vim.pack.add { { src = gh 'benomahony/oil-git.nvim' } }
local oil = require 'oil'
oil.setup {}

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
