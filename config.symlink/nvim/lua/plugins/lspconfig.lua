return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/nvim-cmp" },
  lazy = false,
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- vim.lsp.config('ruby', {
    --   capabilities = capabilities,
    --   offset_encoding = 'utf-8'
    -- })

    vim.lsp.config('sorbet', {
      cmd = { 'bundle', 'exec', 'srb', 'tc', '--lsp', '--disable-watchman' },
      offset_encoding = 'utf-8'
    })

    -- vim.lsp.enable('ruby')
    vim.lsp.enable('sorbet')

    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  end,
}
