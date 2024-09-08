-- lazy config
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- search in the file system for the package.
if not (vim.uv or vim.loop).fs_stat(lazypath) then -- if doesn't exists, it creates it.
  local lazyrepo = "https://github.com/folke/lazy.nvim.git" -- set a var wwith the link to the repo.
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }) -- clone the package
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
-- search for the configs i want for the vim terminal.
require("vim-configs")
-- insert all the plugins i wanna use.
require("lazy").setup("plugins")
