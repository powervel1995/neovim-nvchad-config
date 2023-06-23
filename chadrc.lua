local highlights = require "custom.highlights"

---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "bearded-arc",
  theme_toggle = { "bearded-arc", "tokyodark" },
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
}
M.plugins = "custom.plugins"
M.mappings = require "custom.configs.mappings"

return M
