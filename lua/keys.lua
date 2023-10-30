-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap

map('n', '<space>a', [[:tabnew]], {})
map('n', '<space>q', [[:tabclose]], {})
map('n', '<tab>', [[:tabnext]], {})
map('n', '<space><tab>', [[:tabnext -]], {})
map('n', '<space>t', [[:12split term://bash]], {})
map('t', '<escape>', '<C-\\><C-n>', {})
map('n', '<space>n', [[:NvimTreeToggle]], {})
map('n', '<space>ff', [[:Telescope find_files]], {})
