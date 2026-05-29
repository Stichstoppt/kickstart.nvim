require 'utils'

vim.pack.add { { src = gh 'stevearc/oil.nvim' } }
vim.pack.add { { src = gh 'benomahony/oil-git.nvim' } }
local oil = require 'oil'
oil.setup {
  view_options = {
    -- Aktiviert die Anzeige von versteckten Dateien und Ordnern (.config, .bashrc etc.)
    show_hidden = true,
  },
}

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
