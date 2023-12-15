local lazy = require("lazy")

local plugins = {
  { "catppuccin/nvim", name = "catppuccin-mocha", priority = 1000 },


}
local opts = {}

lazy.setup(plugins, opts)
