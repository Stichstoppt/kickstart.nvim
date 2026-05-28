require 'utils'

vim.pack.add { { src = gh 'ThePrimeagen/harpoon', version = 'harpoon2' } }
local harpoon = require 'harpoon'

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set('n', '<M-n>', function() harpoon:list():add() end)
vim.keymap.set('n', '<M-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set('n', '<M-g>', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<M-f>', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<M-d>', function() harpoon:list():select(3) end)
vim.keymap.set('n', '<M-s>', function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<M-S-P>', function() harpoon:list():prev() end)
vim.keymap.set('n', '<M-S-N>', function() harpoon:list():next() end)
