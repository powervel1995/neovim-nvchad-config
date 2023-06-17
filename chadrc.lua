local highlights = require "custom.highlights"

---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "gatekeeper",
  theme_toggle = { "gatekeeper", "ayu_dark" },
  statusline = {
    theme = "vscode_colored",
  },
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
}
M.plugins = "custom.plugins"
M.mappings = require "custom.configs.mappings"

-- require("base46").toggle_transparency()

return M
