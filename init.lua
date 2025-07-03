-- Set leader key first (before any plugin setup)
vim.g.mapleader = " "  -- sets <leader> to space

-- Basic Neovim settings
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"

-- Bootstrap Lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins from the plugins directory
require("lazy").setup("plugins")

-- Load additional keymaps
require("keymaps")

-- Set colorscheme after plugins are loaded
vim.defer_fn(function()
  pcall(vim.cmd.colorscheme, "catppuccin")
end, 100)




