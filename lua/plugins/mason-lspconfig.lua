return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls" } -- validate if the lsp is already installed, otherwise instal it before everything else.
    })
  end
}
