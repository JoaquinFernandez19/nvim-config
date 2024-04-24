require("config.lazy")
require("mini.files").setup()
require("Comment").setup()
vim.cmd.colorscheme("catppuccin")
require("lspconfig").gdscript.setup { cmd = { "ncat", "localhost", "6008" } }



