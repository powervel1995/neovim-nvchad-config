local M = {}

-- vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#f72569 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#3f3bff gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#8931f5 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#07f766 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

M = {
  show_end_of_line = true,
  space_char_blankline = " ",
  -- char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  --   "IndentBlanklineIndent3",
  --   "IndentBlanklineIndent4",
  -- },
}

return M
