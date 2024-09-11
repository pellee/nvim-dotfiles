return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspConfig = require("lspconfig")
    -- here i have to set up the lsp that were instaled with mason-lspconfig
    lspConfig.lua_ls.setup({
      capabilities = capabilities
    })
    lspConfig.nixd.setup({
      capabilities = capabilities
    })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
  end,
}
