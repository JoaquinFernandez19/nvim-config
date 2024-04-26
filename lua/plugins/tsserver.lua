return {
  {
    "neovim/nvim-lspconfig",

    opts = {
      servers = {
        tsserver = {
          keys = {
            {
              "<leader>coi",
              function()
                vim.lsp.buf.code_action({
                  apply = true,
                  context = {
                    only = { "source.addMissingImports.ts" },
                    diagnostics = {},
                  },
                })
              end,
              desc = "Add Missing Imports",
            },
          },
        },
      },
    },
  },
}
