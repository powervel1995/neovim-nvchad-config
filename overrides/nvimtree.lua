local M = {}

M = {
  git = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  },
  view = { side = "right", width = 40 },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
