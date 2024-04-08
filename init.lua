require("config.lazy")
require("mini.files").setup()
require("Comment").setup()
vim.cmd.colorscheme("catppuccin")
local lspconfig = require("lspconfig")
lspconfig.gdscript.setup({})


