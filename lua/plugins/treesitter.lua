return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "lua", "markdown", "markdown_inline", "c", "cpp", "vimdoc" }, -- what parsers we want ensured are installed in tree-sitter.
      sync_install = false,
      highlight = { enable = true },                                                  -- highlitghts on the languages installed.
      indent = { enable = true },                                                     -- same as before. indent on the languages installed.
    })
  end,
}
