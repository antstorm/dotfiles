return {
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
	  dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fp", "<cmd>Telescope git_files<cr>", desc = "Find Project Files" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find in Buffers" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep all files" },
      { "<C-f>", "y<ESC>:Telescope live_grep default_text=<c-r>0<CR>", mode = {"v"}, desc = "Grep current selection" },
      { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Grep current word" },
      { "<leader>fc", "<cmd>Telescope commands<cr>", desc = "Find Commands" },
      { "<leader>ft", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Find in Symbols" },
      { "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", desc = "Jump to definition" },
      { "<leader>fe", "<cmd>Telescope lsp_references<cr>", desc = "Show references" },
      { "<leader>fr", "<cmd>Telescope resume<cr>", desc = "Resume the last picker" },
    },
    config = function(_, opts)
      local telescope = require('telescope')
      telescope.setup(opts)
      telescope.load_extension('fzf')
    end,
  }
}
