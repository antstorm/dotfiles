return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/nvim-cmp" },
  lazy = false,
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require("lspconfig")

    lspconfig.ruby_lsp.setup({
      capabilities = capabilities
    })

    lspconfig.sorbet.setup({
      cmd = { 'bundle', 'exec', 'srb', 'tc', '--lsp', '--disable-watchman' }
    })

    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  end,
}
