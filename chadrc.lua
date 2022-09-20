local M = {}

M.plugins = require "custom.plugins"

M.ui = {
  theme = "radium",
  theme_toggle = { "everforest", "one_light" },
  hl_add = require("custom.highlights").new_hlgroups,
  hl_override = require("custom.highlights").overriden_hlgroups,
}

M.mappings = require "custom.mappings"

return M
