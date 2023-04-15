local M = {}

function M.status()
  return require("util.dashboard.config").get_theme().statusline
end

return M
