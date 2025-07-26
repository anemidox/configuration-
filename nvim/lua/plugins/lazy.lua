local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-lualine/lualine.nvim", config = function() require("lualine").setup() end },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  { "folke/tokyonight.nvim", lazy = false, priority = 1000,
  config = function()
    vim.cmd("colorscheme tokyonight-night")
  end,
},


})


