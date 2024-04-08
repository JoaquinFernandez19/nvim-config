return {{
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim", "vimdoc", "markdown", "lua", "html", "c", "bash", "gdscript", "godot_resource", "gdshader"
    },
    auto_install = true
  }
}}
