return {
  'mg979/vim-visual-multi',
  config = function ()
    vim.keymap.set('n', '<c-s-up>', ':call vm#commands#add_cursor_up(0, v:count1)<cr>', { noremap = true, silent = true })
    vim.keymap.set('n', '<c-s-down>', ':call vm#commands#add_cursor_down(0, v:count1)<cr>', { noremap = true, silent = true })
  end,
}
