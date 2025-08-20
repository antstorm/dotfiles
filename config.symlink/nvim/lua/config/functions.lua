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
