local M = {}

-- M.general = {
--   n = {
--     [";"] = { ":", "enter command mode", opts = { nowait = true } },
--   },
-- }

M.general = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "Move down half page center page" },
    ["<C-u>"] = { "<C-u>zz", "Move up half page center page" },
    ["n"] = { "nzzzv", "Search word with half page" },
    ["N"] = { "Nzzzv", "Search word with half page" },
    ["<leader><F5>"] = {
      function()
        vim.cmd.UndotreeToggle()
      end,
      "UndoTreeToggle window open",
    },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move selected content down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selected content up" },
  },
}

M.telescope = {
  n = {
    -- ["<C-p>"] = { "<cmd> Telescope find_files  <CR>", "Find files" },
    ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Find symbols" },
  },
}

return M
