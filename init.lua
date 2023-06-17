vim.wo.relativenumber = true
vim.o.clipboard = "unnamed"
vim.opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
vim.opt.scrolloff = 8

-- vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#8400ff", bold = true })
-- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#8400ff", bold = true })

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})
