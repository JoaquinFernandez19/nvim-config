require("config.lazy")
require("mini.files").setup()
require("Comment").setup()
require("lspconfig").gdscript.setup { cmd = { "ncat", "localhost", "6008" } }



