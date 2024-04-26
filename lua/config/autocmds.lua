-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.tsx", "*.ts", "*.jsx", "*.js" },
  command = "EslintFixAll",
  group = vim.api.nvim_create_augroup("MyAutocmdsJavaScripFormatting", {}),
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.rs" },
  command = ":sil! !cargo fmt --quiet",
  group = vim.api.nvim_create_augroup("AutoCmdRust", {}),
})

vim.api.nvim_command([[
  autocmd FileType gdscript setlocal commentstring=#\ %s
]])

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua" },
  callback = function()
    vim.b.autoformat = true
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.ts", "*.tsx" },
  callback = function()
    vim.lsp.buf.code_action({
      apply = true,
      context = {
        only = { "source.addMissingImports.ts" },
        diagnostics = {},
      },
    })
  end,
})
