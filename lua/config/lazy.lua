local lazy = require("lazy")

local plugins = {
    { 'catppuccin/nvim', name = 'catppuccin-mocha', priority = 1000 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
local opts = {}

lazy.setup(plugins, opts)
