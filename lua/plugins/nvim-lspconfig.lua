return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspConfig = require("lspconfig")
    -- here i have to set up the lsp that were instaled with mason-lspconfig
    lspConfig.lua_ls.setup({})
  end
}
