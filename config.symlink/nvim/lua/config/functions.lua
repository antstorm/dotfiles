function copyRelativeFilePath()
  local filepath = vim.fn.expand('%')
  vim.fn.setreg('+', filepath)
end

function copyAbsoluteFilePath()
  local filepath = vim.fn.expand('%:p')
  vim.fn.setreg('+', filepath)
end

-- Copy file path
vim.keymap.set('n', '<leader>yp', copyRelativeFilePath, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ypp', copyAbsoluteFilePath, { noremap = true, silent = true })

-- Jump to beginning/end of line
vim.keymap.set('i', '<C-e>', '<C-o>$')
vim.keymap.set('i', '<C-a>', '<C-o>_')
vim.keymap.set('n', '<C-e>', '$')
vim.keymap.set('n', '<C-a>', '_')
vim.keymap.set('v', '<C-e>', '$')
vim.keymap.set('v', '<C-a>', '_')

-- Keep registers intact after pasting over text
vim.keymap.set('v', 'p', '"_dP')

-- Use leader+[ and leader+] for switching between tabs
vim.keymap.set('n', '<leader>[', ':tabprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>]', ':tabnext<CR>', { noremap = true, silent = true })

-- Testing a key combination
-- vim.keymap.set('n', '<leader>[', ':echo "It works!"<CR>')

-- Allow deleting buffers from Telescope
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<c-d>"] = actions.delete_buffer,
      },
      n = {
        ["<c-d>"] = actions.delete_buffer,
      },
    },
  },
}

-- Highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 200 }
  end,
})
