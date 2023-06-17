local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins
local formatting = b.formatting
local diagnostics = b.diagnostics

local opts = {
  sources = {
    formatting.black,
    formatting.stylua,
    formatting.deno_fmt,
    formatting.prettier.with { filetypes = { "html", "css", "markdown" } },
    formatting.rustfmt,
    formatting.isort,
    formatting.clang_format,
    diagnostics.mypy,
    diagnostics.ruff,
    diagnostics.eslint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}

null_ls.setup {
  debug = true,
  sources = opts.sources,
  on_attach = opts.on_attach,
}
