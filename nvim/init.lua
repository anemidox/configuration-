-- init.lua

vim.g.mapleader = " "

-- Load core settings
require("core.options")
require("core.keymaps")
require("core.autocommands")

-- Load plugins via Lazy.nvim
require("plugins.lazy")
